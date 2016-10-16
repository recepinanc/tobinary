require "tobinary/version"

module Tobinary
  def to_binary
    number = self

    if number < 0 || number > 65536
      puts 'Sorry cannot convert this number to binary'
      number
    else
      if number < 4
        digits = Array.new(2,0)
      elsif number < 256
        digits = Array.new(8,0)
      elsif number < 65536
        digits = Array.new(16,0)
      end

      index = digits.length-1
      while number > 0
        digits[index] = number % 2
        index -= 1
        number /= 2
      end
      digits.join
    end
  end
end

class Fixnum
  include Tobinary
end