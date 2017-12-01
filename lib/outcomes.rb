class Outcomes
  def check(results)
    return 'win' if results[0] == 'X' && results[1] == 'X' && results[2] == 'X'
    return 'win' if results[0] == '0' && results[1] == '0' && results[2] == '0'
    return 'win' if results[3] == 'X' && results[4] == 'X' && results[5] == 'X'
    return 'win' if results[3] == '0' && results[4] == '0' && results[5] == '0'
    return 'win' if results[6] == 'X' && results[7] == 'X' && results[8] == 'X'
    return 'win' if results[6] == '0' && results[7] == '0' && results[8] == '0'
    return 'win' if results[0] == 'X' && results[3] == 'X' && results[6] == 'X'
    return 'win' if results[0] == '0' && results[3] == '0' && results[6] == '0'
    return 'win' if results[1] == 'X' && results[4] == 'X' && results[7] == 'X'
    return 'win' if results[1] == '0' && results[4] == '0' && results[7] == '0'
    return 'win' if results[2] == 'X' && results[5] == 'X' && results[8] == 'X'
    return 'win' if results[2] == '0' && results[5] == '0' && results[8] == '0'
    return 'win' if results[0] == 'X' && results[4] == 'X' && results[8] == 'X'
    return 'win' if results[0] == '0' && results[4] == '0' && results[8] == '0'
    return 'win' if results[2] == 'X' && results[4] == 'X' && results[7] == 'X'
    return 'win' if results[2] == '0' && results[4] == '0' && results[7] == '0'
  end
end
