def fields(str)
  str.split(/\b[^a-z0-9]*\b/i)
end


p fields("Pete,201,Student")
# -> ['Pete', '201', 'Student']

p fields("Pete \t 201    ,  TA")
# -> ['Pete', '201', 'TA']

p fields("Pete \t 201")
# -> ['Pete', '201']


# GIVEN SOLUTION
#
# def fields(str)
#   str.split(/[ \t,]+/)
# end
