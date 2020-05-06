def test
  yield(1, 2)
end

test {|num1, num2, num3| puts "#{num1} #{num2} #{num3}"}
