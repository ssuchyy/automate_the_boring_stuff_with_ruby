require 'minitest/autorun'
require_relative 'regex_strip'

class CommaCodeTest < Minitest::Test
  def test_default_whitespace_strip
    assert_equal 'word', '    word '.regex_strip
  end

  def test_whitespace_in_the_middle
    assert_equal 'two words', '   two words '.regex_strip
  end

  def test_one_char
    assert_equal 'worad', 'aaworada'.regex_strip('a')
  end

  def test_multiple_chars
    assert_equal 'cab', 'abcabccababc'.regex_strip('abc')
  end

  def test_regex
    assert_equal 'word', 'aacbcwordbbcaa'.regex_strip('[abc]')
  end
end
