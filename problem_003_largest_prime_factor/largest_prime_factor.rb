class LargestPrimeFactorFinder

  def self.largest_prime_factor(number)

    # ############################
    # TERMS / VOCABULARY

    # http://www.aaamath.com/div-terms.htm

    # Dividend = number being divided
    # Divisor  = number that the dividend is divided by
    # Quotient = number of times the divisor will go into the dividend


    # ############################
    # FLOW

    # Given a dividend
    # the lowest divisor will produce the highest quotient AKA the highest factor
    # the next highest divisor will produce the next highest factor etc.
    # In this way we can decrement through the factors from highest to lowest and check if they're prime.

    # ############################
    # PSEUDO CODE

    # divide by two
      # check if quotient is prime
        # if not
          # divide by 3 and repeat.

    divisor = 2 # start with 2
    if factor?(number, divisor) # refactor this with divmod
      # check if it's prime
      factor = number / divisor
      if prime?(factor)
        # Success!
        highest_prime_factor = factor
        return highest_prime_factor
      end
    end
  end

  def self.factor?(dividend, divisor)
    dividend % divisor == 0
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