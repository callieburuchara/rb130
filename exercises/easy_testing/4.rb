require 'minitest/autorun'

require_relative 'other_file'

class ListTest < MiniTest::Test
  def test_empty
    assert_empty(list)
  end
end
