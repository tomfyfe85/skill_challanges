class Todo
  def initialize(task) # task is a string
    @task = task
     @check = false
  end

  def task
     @task
  end

  def mark_done!
    # Marks the todo as done
    # Returns not
    @check = true
  end

  def done?
    # Returns true if the task is done
    # Otherwise, false
    @check
  end
end