require 'minitest/autorun'

require_relative 'other_file'

class NumericTest < MiniTest::Test
  def test_instance_of
    assert_instance_of(Numeric, value)
  end
end
