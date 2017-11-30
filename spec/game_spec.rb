require 'game'

RSpec.describe 'A game' do

  let (:field) {double :field}
  let (:board) {double :board, field: field }
  let(:game) {Game.new(board)}

  it 'is created with a board' do
    expect(game.board).to be board
  end


end
