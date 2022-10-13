require 'part3_challenge'

RSpec.describe 'part3_challenge method' do 
  it "1. checks whether string contains 'todo'" do 
    result = todo('this a todo list but not really')
    expect(result).to eq true
  end
  it "2. checks whether string contains 'todo'" do 
    result = todo('this a list but not really')
    expect(result).to eq false
  end 
end 

