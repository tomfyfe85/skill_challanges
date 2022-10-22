require_relative '../lib/todoList.rb'
require_relative '../lib/todo.rb'

RSpec.describe TodoList do 
  context 'takes instance of Todo' do 
    it 'returns incomplete tasks' do 
      td_list = TodoList.new 
      todo1 = Todo.new('Task_1')
      td_list.add(todo1)
      expect(td_list.incomplete).to eq [todo1]
    end
    it 'returns many incomplete tasks' do 
      td_list = TodoList.new 
      todo1 = Todo.new('Task_1')
      todo2 = Todo.new('Task_2')
      td_list.add(todo1)
      td_list.add(todo2)
      expect(td_list.incomplete).to eq [todo1, todo2]
    end
    it 'complete returns todos marked done (true)' do 
      td_list = TodoList.new 
      todo1 = Todo.new('Task_1_true')
      todo2 = Todo.new('Task_2_true')
      todo1.mark_done!
      todo2.mark_done!
      td_list.add(todo1)
      td_list.add(todo2)
      expect(td_list.complete).to eq [todo1, todo2]
    end 
    describe '#give_up!' do 
      it 'marks all todos as complete (true)' do 
        td_list = TodoList.new 
        todo1 = Todo.new('Task_1_true')
        todo2 = Todo.new('Task_2_false')
        todo1.mark_done!
        todo2.done?
        td_list.add(todo1)
        td_list.add(todo2)
        expect(td_list.give_up!).to eq [todo1,todo2]
      end 
    end 
  end 
end 