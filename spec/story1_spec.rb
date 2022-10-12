require 'story1.rb'

RSpec.describe "story1.rb" do 
  it 'returns 0 seconds for 0 words' do 
    result = story1('')
    expect(result).to eq 0        
    end 
  it 'returns words per second' do 
    result = story1('shortT short short s s s')
    expect(result).to eq 1
  end 
end