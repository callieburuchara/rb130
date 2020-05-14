def each_with_index(arr)
  index = 0
  while index < arr.size do
    yield(arr[index], index)
    index += 1
  end
  
  arr  
end

#result = each_with_index([1, 3, 6]) do |v, ind|
#  puts "#{ind} -> #{v ** ind}"
#end
#
#p result
