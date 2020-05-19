require 'minitest/autorun'

require_relative 'other_file'

class EmployeeTest < MiniTest::Test
  def test_no_experience
    assert_raises(NoExperienceError) do
      employee.hire
    end
  end
end
