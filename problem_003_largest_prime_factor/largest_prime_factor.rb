class LargestPrimeFactorFinder

  def self.largest_prime_factor(number)
    largest_prime_in_set(factors(number))
  end

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
    (2...number).each do |n|
      return false if number % n == 0
    end
    true
  end
end