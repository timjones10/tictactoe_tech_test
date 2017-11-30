require_relative 'board'

class Game

attr_reader :board

  def initialize(board)
    @board = board
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

end
