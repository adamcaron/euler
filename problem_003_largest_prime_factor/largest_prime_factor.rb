class LargestPrimeFactorFinder

  def self.largest_prime_factor(number)
    largest_prime_in_set(factors(number))
  end

  # Maybe look into a profiler
  # that demonstrates where Ruby is spending it's time:
  # self.factors or self.prime?
  # RubyProf: https://github.com/ruby-prof/ruby-prof

  # http://stackoverflow.com/questions/3398159/all-factors-of-a-given-number

  # Is it possible and quicker to get all the primes of a number,
  # then, of those primes, determine which is the highest factor?

  def self.factors(number)
    some_factors = []
    1.upto(number) do |n|
      if number % n == 0
        some_factors << n
      end
    end
    some_factors
  end

  def self.largest_prime_in_set(set)
    set.reverse.each do |n|
      return n if prime?(n)
    end
  end

  def self.prime?(number)
    # check up to half-the number bcuz a number will never be (wholly) divisible by another number that's more than half itself.
    (2...number).each do |n|
      # means by which we check if it's prime.
      # in the seive of eratosthenes,
      # only numbers between 2 and 9 need to be checked [is this true? ... if so, let's do this and do it concurrently]

      # 2, 3, 5, 7, 11
      # only up to the square root of the number

      # step counting http://www.dotnetperls.com/iterator-ruby
      # use step counting to step over those numbers that aren't applicable.
      # take an array of numbers and nullify anything that's not prime. (Sieve of Eratosthenes)

      return false if number % n == 0
    end
    true
  end
end