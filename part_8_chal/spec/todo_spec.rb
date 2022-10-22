require_relative '../lib/todo.rb'

RSpec.describe Todo do 
  context 'take argument' do 
    it 'returns a string' do 
      todo = Todo.new("task1")
      expect(todo.task).to eq "task1"
    end
    context 'mark_done!/done?' do 
      it 'mark_done! returns true' do 
       todo = Todo.new("task...1")
        expect(todo.mark_done!).to eq true 
      end
      it 'done? returns false' do 
        todo = Todo.new("task...1")
        expect(todo.done?).to eq false
      end
    end
  end 
end 
