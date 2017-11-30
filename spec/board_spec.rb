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

  it 'has an update_field method' do
    board.update_field(3, 'X')
    expect(board.grid[2].content).to eq 'X'
  end

  it 'has a check_results method which strips field contents to an array' do
    board.update_field(3, 'X')
    expect(board.check_results).to eq [nil, nil, "X", nil, nil, nil, nil, nil, nil]
  end

end
