require 'minitest/autorun'

require_relative 'other_file'

class RefuteTest < MiniTest::Test
  def test_refutation
    refute_includes(list, 'xyz')
  end
end
