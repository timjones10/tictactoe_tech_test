require 'field'

RSpec.describe 'A field' do

  let(:field) {Field.new('X')}

  it 'has content which can be set to X or O' do
    field.content = '0'
    expect(field.content).not_to eq 'X'
  end

end
