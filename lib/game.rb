class Game

  attr_accessor :board, :player_1, :player_2, :token

  WIN_COMBINATIONS = [
  [0,1,2], #Top row
  [3,4,5], #Middle row
  [6,7,8], #Bottom row
  [0,3,6], #Left column
  [1,4,7], #Middle column
  [2,5,8], #Right column
  [0,4,8], #Left start diagonal
  [2,4,6]  #Right start diagonal
  ]

  def initialize(player_1 = Players::Human.new("X"), player_2 = Players::Human.new("O"), board = Board.new)
    @player_1 = player_1
    @player_2 = player_2
    @board = board
  end

  def current_player
    if board.turn_count % 2 == 0
      player_1
    elsif board.turn_count % 2 == 1
      player_2
    end
  end

  def won?
    WIN_COMBINATIONS.detect do |combination|
      combination[0] == combination[1] && combination[0] == combination[2] && combination[0] != " " 
    end
  end

  def draw?

  end

  def over?

  end

  def winner

  end

  def self.turn

  end

  def self.play

  end

end
