require 'minitest/autorun'
require 'minitest/pride'
require './even_fibs'
require 'pry'

class EvenFibsTest < Minitest::Test
  def test_it_returns_the_first_twelve_fibonacci_numbers
    assert_equal [0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89], EvenFibs.fibonacci_numbers(89)
  end

  def test_it_returns_the_sum_of_the_even_fibonacci_numbers
    assert_equal 44, EvenFibs.only_evens(89)
  end

  def test_it_returns_only_up_to_four_million_fibonacci_numbers
    assert_equal 4613732, EvenFibs.only_evens
  end
end