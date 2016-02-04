# Largest prime factor

### Problem 3

The prime factors of 13195 are 5, 7, 13 and 29.

What is the largest prime factor of the number 600851475143 ?

Reference Video: [Sieve of Eratosthenes](https://www.youtube.com/watch?v=V08g_lkKj6Q)

----------

# Experiement

What's faster?

Ruby's standard Prime library or a home-rolled prime-checker ...

131950
home-rolled -- 0.0135
Ruby::Prime -- 0.013

13195000
home-rolled -- 1.13
Ruby::Prime -- 1.13

131950000
home-rolled -- 11.1
Ruby::Prime -- 11.1


This home-rolled solution operates at the same speed as Ruby's Prime library...
```
  def self.prime?(number)
    (2...number).each do |n|
      return false if number % n == 0
    end
    true
  end
```