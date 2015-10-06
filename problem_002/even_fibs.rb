# Each new term in the Fibonacci sequence is generated
# by adding the previous two terms.
# By starting with 1 and 2, the first 10 terms will be:

# 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...

# By considering the terms in the Fibonacci sequence
# whose values do not exceed four million,
# find the sum of the even-valued terms.

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