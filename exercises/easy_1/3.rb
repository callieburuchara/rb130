def missing(arr)
  missing = []
  (arr.min..arr.max).each do |num|
    missing << num unless arr.include?(num)
  end
  missing
end



p missing([-3, -2, 1, 5]) == [-1, 0, 2, 3, 4]
p missing([1, 2, 3, 4]) == []
p missing([1, 5]) == [2, 3, 4]
p missing([6]) == []
