require 'game'

RSpec.describe 'A game' do

  let (:field) {double :field}
  let (:board) {double :board, field: field }
  let(:game) {Game.new(board)}
  index = 3
  shape = 'X'

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

  it 'has a check_results method' do
    expect(board).to receive(:check_results)
    game.check_results
  end

  it 'knows when game is over' do
    allow(board).to receive(:check_results).and_return(["X", "X", "X", "X", "X", "X", "X", "X", "X"])
    expect(game.game_over?).to be true
  end

end
