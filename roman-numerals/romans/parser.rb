module RomanNumerals
  class Parser
    def self.parse_integer(int)
      _parse_integer(int, ROMANS.min).to_s
    end

    private
    def self._parse_integer(integer, accumulator)
      return accumulator if integer <= 0

      biggest = ROMANS.select{|numeral| numeral <= integer}.max
      remainder = integer - biggest.int_val
      _parse_integer(remainder, accumulator + biggest)
    end
  end
end
