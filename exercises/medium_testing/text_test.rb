require 'minitest/autorun'

require_relative 'text_class'

class TextTest < MiniTest::Test
  def setup
    @file = File.open('sample.txt', 'r')
  end

  def test_swap
    text = Text.new(@file.read)
    actual_text = text.swap('a', 'e')

    altered = File.open('changed.txt', 'r')
    expected_text = Text.new(altered.read).text

    assert_equal(expected_text, actual_text) 
  end

  def test_word_count
    text = Text.new(@file.read)
    assert_equal(72, text.word_count)
  end


  def teardown
    @file.close    
  end
end
