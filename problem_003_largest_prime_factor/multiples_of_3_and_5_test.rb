require 'minitest/autorun'
require 'minitest/pride'
require './multiples_of_3_and_5'
require 'pry'

class MultipleSummerTest < Minitest::Test
  def test_it_returns_all_the_natural_numbers_below_a_given_number
    assert_equal [1, 2, 3, 4], MultipleSummer.get_natural_numbers_below(5)
  end

  def test_it_returns_all_the_numbers_that_are_multiples_of_3_or_5
    assert_equal [3, 5, 6, 9], MultipleSummer.get_multiples_of_3_or_5_below(10)
  end

  def test_it_returns_a_sum_of_the_multiples
    assert_equal 23, MultipleSummer.sum_multiples_of_3_or_5_below(10)
  end

  def test_it_returns_a_sum_of_the_multiples_for_a_large_number
    assert_equal 233168, MultipleSummer.sum_multiples_of_3_or_5_below(1000)
  end
end