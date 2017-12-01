require_relative 'field'
require_relative 'board'
require_relative 'outcomes'

class Game

attr_reader :board, :outcomes

  def initialize(board, outcomes)
    @board = board
    @outcomes = outcomes
    @player1 = []
    @player2 = []
  end

  def get_player_names
    puts 'Player 1 - Enter your name'
    @player1 = gets.chomp
    puts 'Player 2 - Enter your name'
    @player2 = gets.chomp
    "#{@player1[0]} is X and goes first"
  end

  def update_field(field, shape)
    board.update_field(field, shape)
  end

  def check_results
    board.check_results
  end

  def game_over?
    check_results.all?
  end

  def win?
    outcomes.check(board.check_results)
  end

  def display
    puts board.display(board.check_results)
  end

end
