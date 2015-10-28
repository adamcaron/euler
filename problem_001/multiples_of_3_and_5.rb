class MultipleSummer

  def self.sum_multiples_of_3_or_5_below(given_number)
    multiples = get_multiples_of_3_or_5_below(given_number)
    multiples.inject(:+)
  end

  def self.get_natural_numbers_below(given_number)
    natural_numbers = []
    while (given_number - 1) > 0
      given_number -= 1
      natural_numbers << given_number
    end
    natural_numbers.reverse
  end

  def self.get_multiples_of_3_or_5_below(given_number)
    nat_numbers = get_natural_numbers_below(given_number)
    nat_numbers.map do |n|
      if n % 3 == 0 || n % 5 == 0
        n
      end
    end.compact
  end

end