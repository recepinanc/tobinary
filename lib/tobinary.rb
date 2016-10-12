require "tobinary/version"

module Tobinary
  def to_binary
    number = self

    if number > 0
      # todo
    else
      puts ''
    end
  end
end

class Numeric
  include Tobinary
end