require_relative 'field'

class Board

  DEFAULT_SIZE = 3

  attr_reader :grid, :size

  def initialize(field, size = DEFAULT_SIZE)
    @grid = []
    @field = field
    @size = size
    create_grid(size, field)
  end

  private

  def create_grid(size, field)
    square = size * size
    square.times {grid.push field.new}
  end

end
