def each_cons(arr)
  index = 0
  length = 2 # this paves the way to allow a second argument for the length of slices

  until index > arr.size - length
    yield(arr[index, length])
    index += 1  
  end
  
  nil
end



#hash = {}
#result = each_cons([1, 3, 6, 10]) do |value1, value2|
#  hash[value1] = value2
#end
#p result == nil
#p hash == { 1 => 3, 3 => 6, 6 => 10 }
#
#hash = {}
#result = each_cons([]) do |value1, value2|
#  hash[value1] = value2
#end
#p hash == {}
#p result == nil
#
#hash = {}
#result = each_cons(['a', 'b']) do |value1, value2|
#  hash[value1] = value2
#end
#p hash == {'a' => 'b'}
#p result == nil
