require 'minitest/autorun'

require_relative 'other_file'

class IncludedTest < MiniTest::Test
  def test_included
    assert_includes(list, 'xyz')
  end
end
