require_relative 'field'
require_relative 'board'
require_relative 'outcomes'

class Game

attr_reader :board, :outcomes, :current_turn

  def initialize(board, outcomes)
    @board = board
    @outcomes = outcomes
    @player1 = ''
    @player2 = ''
    @current_turn = 1
  end

  def update_player_names(name)
    @player1 = gets.chomp if current_turn == 1
    @player2 = gets.chomp if current_turn == 2
    current_turn == 1 ? @current_turn = 2 : @current_turn = 1
  end

  def update_field(field, shape)
    board.update_field(field, shape)
  end

  def check_results
    board.check_results
  end

  def game_over?
    check_results.all? {|shape| shape == 'X' || shape == '0'}
  end

  def win?
    outcomes.check(check_results)
  end

  def display
    puts board.display(check_results)
  end

  private

  def game_over
    puts "Game Over" if game_over? == true
  end

  def game_won
     puts "#{@player1} won" if win? == true && current_turn == 1
     puts "#{@player2} won" if win? == true && current_turn == 2
  end

end
