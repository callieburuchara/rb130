class TodoList

  def select
    list = TodoList.new(title)
    each do |todo|
      list.add(todo) if !!yield(todo) 
    end
    list
  end

end
