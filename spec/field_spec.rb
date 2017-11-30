require 'field'

RSpec.describe 'A field' do

  let(:field) {Field.new}

  it 'has content which can be set to X or O' do
    field.content= '0'
    expect(field.content).to eq '0'
  end

end
