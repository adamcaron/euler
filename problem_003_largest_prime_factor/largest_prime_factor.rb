class LargestPrimeFactorFinder

  def self.largest_prime_factor(number)
    largest_prime_in_set(factors(number))
  end

  # Maybe look into a profiler
  # that demonstrates where Ruby is spending it's time:
  # self.factors or self.prime?
  # RubyProf: https://github.com/ruby-prof/ruby-prof

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
      return false if number % n == 0
    end
    true
  end
end
