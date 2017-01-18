module RomanNumerals
  class Parser
    def self.from_integer(int)
      _from_integer(int, ROMANS.min).to_s
    end

    private
    def self._from_integer(integer, accumulator)
      return accumulator if integer <= 0

      biggest = ROMANS.select{|numeral| numeral <= integer}.max
      remainder = integer - biggest.int_val
      _from_integer(remainder, accumulator + biggest)
    end
  end
end
