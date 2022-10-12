require 'make_snippet'

RSpec.describe 'snippet_method' do 
    it 'returns true if arguement is a string' do
     result = make_snippet('string')
     expect(result).to eq true
    end
end 
