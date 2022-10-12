require 'make_snippet'

 RSpec.describe 'snippet_method' do 
    # it 'returns true if arguement is a string' do
    #  result = make_snippet('string')
    #  expect(result).to eq true          
    
    # it 'returns first five letters of STR' do
    # result = make_snippet('FIVELETTERS')
    # expect(result).to eq 'FIVEL' 
    
    it "returns one word'"do
    result = make_snippet('hello')
    expect(result).to eq 'hello'            
    end 
    it "returns first 5 words of string"do
    result = make_snippet('hello my name is john doe')
    expect(result).to eq 'hello my name is john...'
    end 

  end 


