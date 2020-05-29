=begin
- Task: create a new Enumerator object
- I may define what values are iterated upon
- Ours can iterate over an infinite list of factorials
- Once I create it, test it by printing out the first 7 factorial values, starting with 0 factorial

- Print the first 7 factorials using an "External Iterator"
- Once I do, reset my enumerator
- Then, reprint those same 7 factorials using my Enumerator object as an "Internal Iterator"

- Check out the `Enumerator` documentation 
- Check out the ::new method --> it's a good starting point 
- Read the internal v external itererators part at top of documentation

HINTS
- Use the wikipedia page on factorials for help
- I only need 3 enumerator methods for this exercise
- An Enumerator also implements the Enumerable module. This'll make the object easier to write 

- factorial is all positive integers up to and including n times each other
- factorial 5 is (5 x 4 x 3 x 2 x 1)

=end

factorial = Enumerator.new do |input|
  accumulator = 1
  number = 0
  
  loop do
    accumulator = number.zero? ? 1 : accumulator * number
    input << accumulator
    number += 1
  end

  7.times { puts factorial.next }
  
  factorial.rewind

  factorial.each_with_index do |number, index|
    puts number
    break if index == 6
  end  

end
