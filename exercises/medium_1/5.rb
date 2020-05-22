items = ['apples', 'corn', 'cabbage', 'wheat']

def gather(items)
  puts "Let's start gathering food."
  yield(items)
  puts "We've finished gathering!"
end

gather(items) do | *first, last |
  puts first.join(', ')
  puts last
end

puts '-------------------------------------------------'

gather(items) do |first, *second, third|
  puts first
  puts second.join(', ')
  puts third
end

puts '-------------------------------------------------'

gather(items) do |first, *second|
  puts first
  puts second.join(', ')
end

puts '-------------------------------------------------'

gather(items) do |one, two, three, four|
  puts "#{one}, #{two}, #{three}, #{four}"
  # I'd rather just say *all as parameter and join them with ', '
end
