require "tobinary/version"

module Tobinary
  def to_binary
    number = self

    if number < 0 || number > 65536
      # todo
      puts 'Sorry cannot convert this number to binary'
      number
    else
      puts ''
    end
  end
end

class Numeric
  include Tobinary
end