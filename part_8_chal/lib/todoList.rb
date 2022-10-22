class TodoList
  def initialize
    @todo_list= []
    
  end

  def add(todo) # todo is an instance of Todo
    # Returns nothing
    @todo_list << todo
  end

  def incomplete
    # Returns all non-done todos
    @todo_list.reject(&:done?)  
  end

  def complete
    # Returns all complete todos
    @todo_list.select(&:done?)
   end

  def give_up!
   @todo_list.each do |make_true|
    make_true.mark_done!
  end
end
end