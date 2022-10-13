require 'story2.rb'

RSpec.describe 'story2.rb' do
  # it 'confirms the first char is in CAPS/?/!' do
  # result = story2('Hello.')
  # expect(result).to eq 'H'
  
  it 'confirms fist char CAPs & last char == "."/?/!'do 
  result = story2('Hello!')
  expect(result).to eq 'Hello!'
  end 






end 