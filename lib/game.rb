require_relative 'board'
require_relative 'outcomes'

class Game

attr_reader :board, :outcomes

  def initialize(board, outcomes)
    @board = board
    @outcomes = outcomes
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
    board.display(board.check_results)
  end

end
