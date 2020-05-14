def divisors(num)
  (1..num).select {|pos| num % pos == 0}
end

p divisors(1)
p divisors(7)
p divisors(12)
p divisors(98)
p divisors(99400891)
