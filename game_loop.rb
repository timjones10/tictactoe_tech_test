
require './lib/game'

loop do
  input = gets.chomp
  game.update_player_names(input)
  input = gets.chomp
  game.update_player_names(input)
  board.display
  break if board.complete
end
