require 'minitest/autorun'
require 'minitest/pride'
require './largest_prime_factor'
require 'pry'

class LargestPrimeFactorFinderTest < Minitest::Test

  def test_it_returns_the_factors_of_a_number
    skip
    assert_equal [1,2], LargestPrimeFactorFinder.factors(2)
    assert_equal [1,3], LargestPrimeFactorFinder.factors(3)
    assert_equal [1,2,3,6], LargestPrimeFactorFinder.factors(6)
    assert_equal [1,17], LargestPrimeFactorFinder.factors(17)
  end

  def test_it_finds_prime_numbers
    skip
    assert_equal true, LargestPrimeFactorFinder.prime?(7)
    assert_equal true, LargestPrimeFactorFinder.prime?(3)
    assert_equal false, LargestPrimeFactorFinder.prime?(4)
    assert_equal true, LargestPrimeFactorFinder.prime?(5)
    assert_equal false, LargestPrimeFactorFinder.prime?(6)
    assert_equal true, LargestPrimeFactorFinder.prime?(7)
    assert_equal false, LargestPrimeFactorFinder.prime?(8)
    assert_equal true, LargestPrimeFactorFinder.prime?(89)
  end

  def test_it_finds_the_largest_prime_in_an_ordered_list
    skip
    assert_equal 3, LargestPrimeFactorFinder.largest_prime_in_set([1,2,3,6])
  end

  def test_it_returns_the_largest_prime_factor_of_a_number
    # assert_equal 29, LargestPrimeFactorFinder.largest_prime_factor(13195)
    assert_equal 29, LargestPrimeFactorFinder.largest_prime_factor(131950000)
    # assert_equal 123, LargestPrimeFactorFinder.largest_prime_factor(600_851_475_143)
  end
end


# take a range of numbers,
# for each number, see if it's divisible by any number between&including 2 through 10





# find the prime factors of a number


# can it be divided by a number
# other than 1 or itself?

# Does it have any divisors other than itself and 1?


# SIEVE OF ERATOSTHENES _______
# how can we check if a number
# has any divisors other than 1 and itself?

# Is it divisible by 2?
# If 'even', then NOT prime
# If a number ends in 2, 4, 6, 8, or 0,
# then one of its factors is 2

# If a number ends in 5 or 0,
# then one of its factors is 5


# Now that we've found all the multiples of two through ten,
# we've found all the prime numbers
# because they only have factors of 1 & themselves.



# Primes up to 100 are:
# [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97]

# now that we've found all the multiples of two through ten,
# the remaining numbers are prime.





