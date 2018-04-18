require 'minitest/autorun'
require_relative 'comma_code'

class CommaCodeTest < Minitest::Test
  def test_one_element
    assert_equal 'Bob', ['Bob'].comma_code
  end

  def test_two_elements
    assert_equal 'Bob and Alan', ['Bob', 'Alan'].comma_code
  end

  def test_three_elements
    assert_equal 'Bob, Alan and Dave', ['Bob', 'Alan', 'Dave'].comma_code
  end

  def test_no_elements
    assert_equal '', [].comma_code
  end

  def test_whitespace_string
    assert_equal ' ', [' '].comma_code
  end

  def test_long_names
    assert_equal 'Bob A. Hughes, Sterling G.G., Carl S. Tomphson and Marie and Max',
                 ['Bob A. Hughes', 'Sterling G.G.', 'Carl S. Tomphson', 'Marie and Max'].comma_code
  end

  def test_integers
    assert_equal '1, 2, 3 and 4', [1, 2, 3, 4].comma_code
  end
end
