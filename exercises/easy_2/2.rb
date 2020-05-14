=begin
- input: 2 arrays of the same size
- output: single nested array with size of original arr amount of nested arrays of pairs
=end

def zip(first, second)
  result = []
  index = 0

  until result.size == first.size
    result << [first[index], second[index]]
    index += 1
  end

  result
end

p zip([1, 2, 3], [4, 5, 6]) == [[1, 4], [2, 5], [3, 6]]

# SUCCINCT GIVEN SOLUTION
#
# def zipper(array1, array2)
#   array1.each_with_index.with_object([]) do |(element, index), result|
#     result << [element, array2[index]]
#   end
# end
