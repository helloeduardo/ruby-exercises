gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'

class OneTest < Minitest::Test

  def test_one_more
    words = ["bigger", "better", "more", "improved", "advantageous"]
    exactly_one = words.one? do |word|
      word == 'more'
    end
    assert exactly_one
  end

  def test_not_even_one_ring
    ornaments = ["bracelet", "anklet", "earring"]
    exactly_one_ring = ornaments.one? do |ornament|
      ornament == "ring"
    end
    refute exactly_one_ring
  end

  def test_not_just_one_ring
    # skip
    ornaments = ["bracelet", "ring", "ring", "anklet", "earring"]
    exactly_one_ring = ornaments.one?("ring")
    refute exactly_one_ring
  end

  def test_one_time
    # skip
    words = ["morning", "time", "evening", "noon", "dusk", "dawn"]
    exactly_one_time = words.one?("time")
    assert exactly_one_time
  end

  def test_one_double_digit_number
    # skip
    numbers = [8, 2, 10, 333, 9, 101]
    exactly_one_double_digit = numbers.one? do |number|
      number.digits.count == 2
    end
    assert exactly_one_double_digit
  end

  def test_not_one_even_number
    # skip
    numbers = [3, 20, 81, 10, 391, 32]
    exactly_one_even_number = numbers.one? do |number|
      number.even?
    end
    refute exactly_one_even_number
  end

end
