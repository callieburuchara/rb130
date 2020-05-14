require 'minitest/autorun'

require_relative 'other_file'

class DowncaseTest < MiniTest::Test

  # set up methods

  def test_downcase
    assert_equal('xyz', value.downcase)
  end
end
