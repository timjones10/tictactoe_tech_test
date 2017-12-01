require 'field'
require 'board'

RSpec.describe 'A board' do

  let(:field) {field}
  let(:board) {Board.new(Field)}
  results = ['X','0','X','0','X','0','X','0','X']

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

  it '#display formats the board and puts to the command line' do
    expect(board.display(results)).to eq "\nX | 0 | X\n_________\n0 | X | 0\n_________\nX | 0 | X\n"
  end

end
