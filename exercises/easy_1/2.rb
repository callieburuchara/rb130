def compute
  block_given? ? yield : 'Does not compute.'
end

#p compute { 5 + 3 } == 8
#p compute { 'a' + 'b' } == 'ab'
#p compute == 'Does not compute.'

# FURTHER EXPLORATION

# NEW VERSION

def compute(arg)
  block_given? ? yield(arg) : 'Does not compute.'
end

p compute('hello!') {|word| word * 2}
p compute('hi there :)')
p compute('') {|word| "What is #{word}?"}




