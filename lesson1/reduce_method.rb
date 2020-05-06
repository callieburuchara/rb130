def reduce(array, accum = 0)
  index = 0
  
  while index < array.size do
    accum = yield(accum, array[index])
    index += 1
  end

  accum
end

array = [1, 2, 3, 4, 5]

p reduce(array) { |acc, num| acc + num }                    # => 15
p reduce(array, 10) { |acc, num| acc + num }                # => 25
p reduce(array) { |acc, num| acc + num if num.odd? }        # => NoMethodError: undefined method `+' for nil:NilClass


=begin
- it's an Enumerable method
- its goal is to accumulate a collection into 1 object
- how the accumulation happens depends on the code passed into the block
- it iterates through the array, and unlike each where it only yields 1 argument to the block, the reduce method yields two arguments to the block. 
  - the first argument is an ccumulator object
  - the second argument is the current element
- the return value of the block is then assigned to the accumulator object


- You can also initialize the accumulator to a default value


=end
