# # Group 1
# my_proc = proc { |thing| puts "This is a #{thing}." }
# puts my_proc
# puts my_proc.class
# my_proc.call
# my_proc.call('cat')

=begin
GROUP 1 OBSERVATIONS
- You can create a new proc by just writing 'proc' and then supplying a block to it
- When you call to_s on this proc object it outputs the Proc object encoding
- a proc object's class is Proc
- If you call the proc object (using `#call`) then it executes the block
  - Also, if it's not given a a needed argument, it's just nil
  - If you call it with a needed argument, it's used as the parameter in the 
    block
=end

# # Group 2
# my_lambda = lambda { |thing| puts "This is a #{thing}." }
# my_second_lambda = -> (thing) { puts "This is a #{thing}." }
# puts my_lambda
# puts my_second_lambda
# puts my_lambda.class
# my_lambda.call('dog')
# #my_lambda.call
# my_third_lambda = Lambda.new { |thing| puts "This is a #{thing}." }

=begin
GROUP 2 OBSERVATIONS
- lambdas are created the same way procs are except they use the word lambda
- You can also create it with an arrow and the parameter in parentheses
- You can't create a lambda with Lambda.new because Lambda is not a class
- When you call to_s on lambdas, it returns the object encoding but it's a kind of Proc object
- The class of a lambda is a proc
- If you supply the needed parameter/argument, it runs fine
- But if you don't supply the correct number of arguments, you get an ArgumentError

=end


# # Group 3
# def block_method_1(animal)
#   yield
# end
# 
# block_method_1('seal') { |seal| puts "This is a #{seal}."}
# block_method_1('seal')

=begin
GROUP 3 OBSERVATIONS
- the block_method_1 requires a block in order to run (or a LocalJumpError occurs)
- Also, for the first method, the supplied argument is not passed into the block as an argument because the method imeplementation supplies no arguments to the yield. So the block just has 'nil' for the argument

=end

# Group 4
def block_method_2(animal)
  yield(animal)
end

block_method_2('turtle') { |turtle| puts "This is a #{turtle}."}
block_method_2('turtle') do |turtle, seal|
  puts "This is a #{turtle} and a #{seal}."
end
block_method_2('turtle') { puts "This is a #{animal}."}

=begin
GROUP 4 OBSERVATIONS
- Now the method implementation supplies the given argument to the yield
- So now the block uses the given argument
- When the block needs to arguments but only given one, the other one is filled with nil
- When the block is given an argument but it doesn't take any, it just ignores it
- When the block does not take any parameters, but it tries to use a parameter, there is a NameError
=end

=begin
CONCLUSIONS
- Lambdas are types of Procs
- A closure is not an object (can't be treated like an object)
- Lamdas enforce the number of arguments passed to them, but plain Proc objects do not

=end
