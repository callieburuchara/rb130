require 'minitest/autorun'

require_relative 'other_file'

class AssertionsTest < MiniTest::Test
  def test_kind_of
    assert_kind_of(Numeric, value)
  end
end
