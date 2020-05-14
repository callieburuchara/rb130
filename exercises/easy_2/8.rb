=begin
- iterates over the members of a collection
- it then returns the element for which the block returned the largest value
- max-by returns the first max element even if there are ties later on. So my method should do the same. 
=end

def max_by(arr)
  return nil if arr.empty?
  max = arr.first
  arr.each { |el| max = el if yield(el) > yield(max) }
  max
end

p max_by([1, 5, 3]) { |value| value + 2 } == 5
p max_by([1, 5, 3]) { |value| 9 - value } == 1
p max_by([1, 5, 3]) { |value| (96 - value).chr } == 1
p max_by([[1, 2], [3, 4, 5], [6]]) { |value| value.size } == [3, 4, 5]
p max_by([-7]) { |value| value * 3 } == -7
p max_by([]) { |value| value + 5 } == nil
