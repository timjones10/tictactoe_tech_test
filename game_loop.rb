
#this is called a game loop or a game runner

loop do
  input = gets.chomp
  game.update(input)
  board.display
  break if board.complete
end
