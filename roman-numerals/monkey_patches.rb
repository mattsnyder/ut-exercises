require_relative 'roman_numerals'

module MonkeyPatches
  module Integer
    module RomanNumerals
      def to_roman
        ::RomanNumerals::Parser.parse_integer(self)
      end
    end
  end
end

Integer.include MonkeyPatches::Integer::RomanNumerals
