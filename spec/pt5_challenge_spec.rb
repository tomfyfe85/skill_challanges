require 'pt5_challenge'

RSpec.describe GrammarStats do 
  describe '#check(text)' do  
  it 'checks if string begins with CAPS and ends with a "."' do 
      stats = GrammarStats.new
      expect(stats.check('String.')).to eq true 
     end 
  it 'checks if a string begins with CAPS and ends with a "!"' do
     stats = GrammarStats.new 
     expect(stats.check('String!')).to eq true 
  end 
  it 'checks if a string begins with CAPs and ends with a "?"' do 
  stats = GrammarStats.new 
  expect(stats.check('String?')).to eq true 
  end 
end 
end 

describe '#percentage_good' do 
  context 'returns percentage' do
    it 'returns 100 when correct_count == 1 total_check = 1' do 
      stats = GrammarStats.new
      stats.check('String!') 
      expect(stats.percentage_good).to eq 100
    end 
    it 'returns 50 when correct_count 1 and total_checks is 2' do 
      stats = GrammarStats.new
      stats.check('sdsds') 
      stats.check('String!') 
      expect(stats.percentage_good).to eq 50
     end 
    it 'returns 0 when correct_count is 0 and total_checks is 1' do 
      stats = GrammarStats.new
      stats.check('sdsds') 
      expect(stats.percentage_good).to eq 0
    end 
    it 'returns 20 when correct_count is 20 and total_checks is 100' do
      stats = GrammarStats.new
      stats.check('sdads')
      stats.check('sdads')
      stats.check('Strings!')
      stats.check('Strings!') 
      stats.check('Strings!')
      stats.check('Strings!')
      stats.check('sdads')
      stats.check('sdads')
      stats.check('sdads')
      stats.check('sdads')
      expect(stats.percentage_good).to eq 40 
  end 
  it 'fails' do 
    stats = GrammarStats.new
    expect { stats.check(123213) }.to raise_error "You must enter string"
  end 
end 
end

