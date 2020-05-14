require 'minitest/autorun'

require_relative 'other_file'

class NilTest < MiniTest::Test

  def test_nil
    assert_nil(value)
  end

end
