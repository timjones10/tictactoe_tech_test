require_relative 'field'

class Board

  DEFAULT_SIZE = 3

  attr_reader :grid, :size

  def initialize(field, size = DEFAULT_SIZE)
    @grid = (size * size).times.collect{field.new}
    @field = field
    @size = size
  end

  def update_field(field, shape)
    grid[field-1].update_content(shape)
  end

  def check_results
    grid.map {|field| field.content}
  end

  def display(results)
    get_display_string(results)
  end

  private

  def get_display_string(results)
    "\n#{results[0]} | #{results[1]} | #{results[2]}\n#{results[3]} | #{results[4]} | #{results[5]}\n#{results[6]} | #{results[7]} | #{results[8]}\n"
  end

end
