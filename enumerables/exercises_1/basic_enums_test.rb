gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'

class BasicEnumsTest < Minitest::Test
  def test_solve_for_x
    s = ''
    5.times do
      s += "x"
    end
    assert_equal 'xxxxx', s
  end

  #number.sum enumerable
  def test_simple_sum
    # skip
    sum = 0
    numbers = [1, 2, 3, 4, 5]
    numbers.each do |number|
      sum += number
    end
    assert_equal 15, sum
  end

end
