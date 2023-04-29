class NegativeError < StandardError
  def initialize(msg = 'You passed in a negative number')
    super(msg)
  end
end

class Solver
  def factorial(num)
    if num.zero?
      1
    elsif num.negative?
      raise NegativeError
    else
      num * factorial(num - 1)
    end
  end

  def reverse(word)
    word.reverse
  end

  def fizzbuzz(num)
    if (num % 3).zero? && (num % 5).zero?
      'fizzbuzz'
    elsif (num % 3).zero?
      'fizz'
    elsif (num % 5).zero?
      'buzz'
    else
      num.to_s
    end
  end
end
