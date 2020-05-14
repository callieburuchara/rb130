# REGULAR PROBLEM

# def count(arr)
#   count = 0
#   arr.each {|v| count += 1 if yield(v) }
#   count
# end


# FURTHER EXPLORATION
def count(arr)
  total = 0
  
  arr.size.times do |index|
    total += 1 if yield(arr[index])
  end

  total
end

p count([1,2,3,4,5]) { |value| value.odd? } == 3
p count([1,2,3,4,5]) { |value| value % 3 == 1 } == 2
p count([1,2,3,4,5]) { |value| true } == 5
p count([1,2,3,4,5]) { |value| false } == 0
p count([]) { |value| value.even? } == 0
p count(%w(Four score and seven)) { |value| value.size == 5 } == 2
