require 'field'

RSpec.describe 'A field' do

  let(:field) {Field.new}

  it '#update_content changes the value of content' do
    field.update_content('X')
    expect(field.content).to eq 'X'
  end

end
