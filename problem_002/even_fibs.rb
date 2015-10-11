class EvenFibs
  def self.only_evens(limit = 4_000_000)
    numbers = fibonacci_numbers(limit)
    numbers.select(&:even?).inject(:+)
  end

  def self.fibonacci_numbers(limit)
    sequence = [0, 1]
    until sequence.last(2).inject(:+) > limit
      sequence << sequence.last(2).inject(:+)
    end
    sequence
  end
end