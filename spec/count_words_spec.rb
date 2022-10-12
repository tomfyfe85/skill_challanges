require 'count_words.rb'

RSpec.describe 'count_words' do
  it 'returns 0 if nothing given' do
    result = count_words('')
    expect(result).to eq 0
  end 
  it 'returns no of words in a string' do
    result = count_words('my name is john')
    expect(result).to eq 4
  end 
end 