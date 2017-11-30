require 'field'
require 'board'

RSpec.describe 'A board' do

  let(:field) {Field.new}
  let(:board) {Board.new(field)}


  it 'is initiated with a hash' do
    expect(board.board).to be_an_instance_of(Hash)
  end

end
