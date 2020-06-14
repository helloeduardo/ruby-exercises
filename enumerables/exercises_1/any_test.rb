gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'

class AnyTest < Minitest::Test

  def test_has_at_least_one_zero
    numbers = [2, 0, 9, 3, 0, 1]
    has_zero = numbers.any? do |number|
      number.zero?
    end
    assert has_zero
  end

  def test_does_not_have_any_zeros
    numbers = [3, 1, 3, 2, 4, 9, 8]
    has_zero = numbers.any? do |number|
      number.zero?
    end
    refute has_zero
  end

  def test_has_at_least_one_alice
    # skip
    names = ["Bill", "Bob", "Burton", "Alice", "Brandon"]
    has_alice = names.any?("Alice")
    assert has_alice
  end

  def test_no_alices
    # skip
    names = ["Chuck", "Charlene", "Cory", "Chris", "Carl"]
    has_alice = names.any? do |name|
      name == "Alice"
    end
    refute has_alice
  end

  def test_has_a_multi_word_phrase
    # skip
    phrases = ["Sure!", "OK.", "I have no idea.", "Really?Whatever."]
    has_multi_word_phrase = phrases.any? do |phrase|
      phrase.split.count > 1
    end
    assert has_multi_word_phrase
  end

  def test_no_monkeys
    # skip
    animals = ["elephant", "hippo", "jaguar", "python"]
    has_monkeys = animals.any?("monkey")
    refute has_monkeys
  end

  def test_no_multiples_of_five
    # skip
    numbers = [3, 1, 3, 2, 4, 9, 8]
    multiples_of_5 = numbers.any? do |num|
      num % 5 == 0
    end
    refute multiples_of_5
  end

end
