class Todo
  DONE_MARKER = 'X'
  UNDONE_MARKER = ' '

  attr_accessor :title, :description, :done

  def initialize(title, description='')
    @title = title
    @description = description
    @done = false
  end

  def done!
    self.done = true
  end

  def done?
    done
  end

  def undone!
    self.done = false
  end

  def to_s
    "[#{done? ? DONE_MARKER : UNDONE_MARKER}] #{title}"
  end

  def ==(otherTodo)
    title == otherTodo.title &&
      description == otherTodo.description &&
      done == otherTodo.done
  end
end

class TodoList
  attr_accessor :title

  def initialize(title)
    @title = title
    @todos = []
  end

  def add(todo)
    raise TypeError.new('Can only add Todo objects') unless todo.class == Todo
    @todos << todo
  end
  alias_method :<<, :add

  def each
    todos.each do |todo|
      yield(todo)
    end
    self
  end

   def select
    list = TodoList.new(title)
    each do |todo|
      list.add(todo) if !!yield(todo) 
    end
    list
  end
  
  def size
    todos.size
  end

  def first
   todos.first
  end

  def last
   todos.last
  end

  def to_a
    todos.clone    
  end

  def to_s
    puts " ---- Today's Todos ---- "
    todos.each {|todo| puts todo}
  end

  def done?
    todos.all? {|todo| todo.done == true}
  end

  def done!
    each { |todo| todo.done! }
  end
  alias_method :mark_all_done, :done!

  def mark_all_undone
    each { |todo| todo.undone!}
  end
  
  def item_at(index)
    todos.fetch(index)
  end

  def remove_at(index)
     todos.delete(item_at(idx))
  end

  def mark_done_at(index)
    item_at(index).done!    
  end

   def mark_undone_at(index)
    item_at(index).undone!   
   end

  def shift
    todos.shift
  end

  def pop
    todos.pop
  end

  def find_by_title(str)
    select {|todo| todo.title == str}
  end

  def all_done
    select {|todo| todo.done == true}
  end

  def all_not_done
    select {|todo| todo.done == false}
  end

  def mark_done(str)
    find_by_title(str).done!
  end

  private

  attr_reader :todos
end




#------------------------------------------------------------------------------------

    @todo1 = Todo.new("Buy milk")
    @todo2 = Todo.new("Clean room")
    @todo3 = Todo.new("Go to gym")
    @todos = [@todo1, @todo2, @todo3]

    @list = TodoList.new("Today's Todos")
    @list.add(@todo1)
    @list.add(@todo2)
    @list.add(@todo3)

    p @todos == @list.to_a
    p '---------------------'
    p @list.to_a
