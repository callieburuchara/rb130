class TodoList

  def each
    todos.each do |todo|
      yield(todo)
    end
    self
  end

end
