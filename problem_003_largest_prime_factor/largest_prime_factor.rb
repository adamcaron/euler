class PrimeFinder

  def self.factors(number)
    some_factors = []
    1.upto(number) do |n|
      if number % n == 0
        some_factors << n
      end
    end
    some_factors
  end

end