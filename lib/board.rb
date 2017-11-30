class Board

attr_reader :board

def initialize(field=Field.new)
  @board = {}
  @field = field
end

end
