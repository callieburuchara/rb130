require 'minitest/autorun'

require_relative 'other_file'

class OddTest < MiniTest::Test

  def test_odd?
    assert_equal(true, 1.odd?)
    assert_equal(false, 2.odd?)
    assert_equal(true, 101.odd?)
    assert_equal(false, 106.odd?)
  end
end
