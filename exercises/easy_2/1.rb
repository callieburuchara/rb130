# three arguments: start v, end v, step v
# also accept a block that it will yield to on successive iteration values


def step(start, stop, step)
  num = start
  
  until num > stop
    yield(num)
    num += step
  end 
end

step(1, 10, 3) {|v| puts "value = #{v}" }
