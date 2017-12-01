RSpec.describe 'Outcomes Checker' do

  let :outcomes {Outcomes.new}

  win_results = ['X','X','X','0','0',nil,nil,nil,nil]
  win_results_2 = ['0','0','0','0','0',nil,nil,nil,nil]

  it "#check method examines results & returns win or lose" do
    expect(outcomes.check(win_results)).to eq 'win'
  end

  it "#check method examines results & returns win or lose" do
    expect(outcomes.check(win_results_2)).to eq 'win'
  end

end
