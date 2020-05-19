require 'minitest/autorun'

require_relative 'other_file'

class ObjectTest < MiniTest::Test
  def test_same_object
    assert_same(list, list.process)
  end
end
