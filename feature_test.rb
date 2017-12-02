require './lib/game.rb'

game = Game.new(Board.new(Field), Outcomes.new)

puts game.board.grid

game.update_field(1,'X')

game.update_field(2,'0')

game.update_field(3,'X')

# game.update_field(4,'0')
#
# game.update_field(5,'X')
#
# game.update_field(6,'0')
#
# game.update_field(7,'X')
#
# game.update_field(8,'0')
#
# game.update_field(9,'X')

game.display
