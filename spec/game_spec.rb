require 'game'

RSpec.describe 'A game' do

  let (:field) {double :field}
  let (:board) {double :board, field: field }
  let(:game) {Game.new(board)}
  index = 3

  before :each do
    allow(board).to receive(:update_field).with(index)
  end

  it 'is created with a board' do
    expect(game.board).to be board
  end

  it 'has an update_field method' do
    expect(board).to receive(:update_field)
    game.update_field(index)
  end

end
