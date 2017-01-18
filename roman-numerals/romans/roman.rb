module RomanNumerals
  class Roman
    include Comparable
    attr_reader :int_val, :roman_val

    def initialize(int_val, roman_val)
      @int_val = int_val
      @roman_val = roman_val
    end

    def <=>(other)
      if other.is_a? Integer
        int_val <=> other
      else
        int_val <=> other.int_val
      end
    end

    def to_s
      roman_val
    end

    def +(other)
      raise ArgumentError unless other.is_a? Roman

      Roman.new(int_val + other.int_val, roman_val + other.roman_val)
    end
  end
end
