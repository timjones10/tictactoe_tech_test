require './lib/game.rb'

game = Game.new(Board.new(Field), Outcomes.new)

game.update_player_names('Tim')
game.update_player_names('Tom')

game.update_field(1,'X')
game.display
game.update_field(5,'0')
game.display
game.update_field(2,'X')
game.display
game.update_field(6,'0')
game.display
game.update_field(3,'X')
game.display
game.game_won
