require 'game'

RSpec.describe 'A game' do

  let (:field) {double :field}
  let (:board) {double :board, field: field }
  let (:outcomes) {double :outcomes}
  let(:game) {Game.new(board, outcomes)}
  index = 3
  shape = 'X'
  results = ["X", "X", "X", "X", "X", "X", "X", "X", "X"]

  before :each do
    allow(board).to receive(:update_field).with(field, shape)
    allow(board).to receive(:check_results)
  end

  it 'is created with a board' do
    expect(game.board).to be board
  end

  it 'has an update_field method' do
    expect(board).to receive(:update_field)
    game.update_field(field, shape)
  end

  it '#check_results gets the results from the board' do
    expect(board).to receive(:check_results)
    game.check_results
  end

  it '#game_over? knows when game is over' do
    allow(board).to receive(:check_results).and_return(results)
    expect(game.game_over?).to be true
  end

  it '#win? checks whether the game has been won' do
    allow(board).to receive(:check_results).and_return(results)
    allow(outcomes).to receive(:check).with(results).and_return(true)
    expect(game.win?).to be true
  end

  it '#display displays the board' do
    expect(board).to receive(:display)
    game.display
  end

  it '#get_player_names method gets player names on initialisation' do
    expect(game).to receive(:get_player_names)
    game.get_player_names
  end

end
