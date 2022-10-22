require_relative '../lib/todoList.rb'

RSpec.describe TodoList do 
  context 'incomplete will:' do 
    it 'incomplete returns an empty list' do 
      td_list = TodoList.new 
      expect(td_list.incomplete).to eq []
    end 
  end 
end 
