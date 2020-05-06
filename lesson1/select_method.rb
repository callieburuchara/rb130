def select(array)
  selection = []
  counter = 0 

  while counter < array.size do
    selection << array[counter] if !!yield(array[counter])
    counter += 1
  end

  selection
end

array = [1, 2, 3, 4, 5]

p array.select { |num| num.odd? }       # => [1, 3, 5]
p array.select { |num| puts num }       # => [], because "puts num" returns nil and evaluates to false
p array.select { |num| num + 1 }        # => [1, 2, 3, 4, 5], because "num + 1" evaluates to true
