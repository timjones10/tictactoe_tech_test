class Game

attr_reader :board

  def initialize(board)
    @board = board
  end

  def update_field(index)
    board.update_field(index)
  end

end
