require 'field'
require 'board'

RSpec.describe 'A board' do

  let(:field) {field}
  let(:board) {Board.new(Field)}


  it 'is initiated with a grid array' do
    expect(board.grid).to be_an_instance_of(Array)
  end

  it 'is initiated with a default size of 3' do
    expect(board.size).to eq 3
  end

end
