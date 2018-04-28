require 'minitest/autorun'
require_relative 'strong_password_detector'

class CommaCodeTest < Minitest::Test
  def setup
    @spd = StrongPasswordDetector.new
  end

  def test_if_valid_password_is_accepted
    password = 'Agasldsp123'
    assert_equal true, @spd.detect(password)
  end

  def test_if_short_password_is_rejected
    password = 'Asp123'
    assert_equal false, @spd.detect(password)
  end

  def test_if_password_without_uppercase_is_rejected
    password = 'asdfghjfsa123'
    assert_equal false, @spd.detect(password)
  end

  def test_if_password_without_lowercase_is_rejected
    password = 'ASDFGHJKF123'
    assert_equal false, @spd.detect(password)
  end

  def test_if_password_without_digit_is_rejected
    password = 'AfsafFsafsf'
    assert_equal false, @spd.detect(password)
  end
end
