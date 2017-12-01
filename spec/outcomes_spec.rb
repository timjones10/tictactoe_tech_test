RSpec.describe 'Outcomes Checker' do

  let :outcomes {Outcomes.new}

  win_results = ['X','X','X',nil,nil,nil,nil,nil,nil]
  win_results_2 = ['0','0','0',nil,nil,nil,nil,nil,nil]
  win_results_3 = [nil,nil,nil,'X','X','X',nil,nil,nil]
  win_results_4 = [nil,nil,nil,'0','0','0',nil,nil,nil]
  win_results_5 = [nil,nil,nil,nil,nil,nil,'X','X','X']
  win_results_6 = [nil,nil,nil,nil,nil,nil,'0','0','0']
  win_results_7 = ['X',nil,nil,'X',nil,nil,'X',nil,nil]
  win_results_8 = ['0',nil,nil,'0',nil,nil,'0',nil,nil]
  win_results_9 = [nil,'X',nil,nil,'X',nil,nil,'X',nil]
  win_results_10 = [nil,'0',nil,nil,'0',nil,nil,'0',nil]
  win_results_11 = [nil,nil,'X',nil,nil,'X',nil,nil,'X']
  win_results_12 = [nil,nil,'0',nil,nil,'0',nil,nil,'0']
  win_results_13 = ['X',nil,nil,nil,'X',nil,nil,nil,'X']
  win_results_14 = ['0',nil,nil,nil,'0',nil,nil,nil,'0']
  win_results_15 = [nil,nil,'X',nil,'X',nil,'X',nil,nil]
  win_results_16 = [nil,nil,'0',nil,'0',nil,'0',nil,nil]

  it "#check method examines results & returns win" do
    expect(outcomes.check(win_results)).to eq 'win'
    expect(outcomes.check(win_results_2)).to eq 'win'
    expect(outcomes.check(win_results_3)).to eq 'win'
    expect(outcomes.check(win_results_4)).to eq 'win'
    expect(outcomes.check(win_results_5)).to eq 'win'
    expect(outcomes.check(win_results_6)).to eq 'win'
    expect(outcomes.check(win_results_7)).to eq 'win'
    expect(outcomes.check(win_results_8)).to eq 'win'
    expect(outcomes.check(win_results_9)).to eq 'win'
    expect(outcomes.check(win_results_10)).to eq 'win'
    expect(outcomes.check(win_results_11)).to eq 'win'
    expect(outcomes.check(win_results_12)).to eq 'win'
    expect(outcomes.check(win_results_13)).to eq 'win'
    expect(outcomes.check(win_results_14)).to eq 'win'
    expect(outcomes.check(win_results_15)).to eq 'win'
    expect(outcomes.check(win_results_16)).to eq 'win'
  end

end
