require_relative 'roman_numerals'

module MonkeyPatches
  module Integer
    module RomanNumerals
      def to_roman
        ::RomanNumerals::Roman.parse_int(self)
      end
    end
  end
end

Integer.include MonkeyPatches::Integer::RomanNumerals
