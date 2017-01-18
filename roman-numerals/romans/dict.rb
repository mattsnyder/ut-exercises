require_relative 'roman'

# 1,4,5,9
module RomanNumerals
  ROMANS = [
    Roman.new(0, ""),
    Roman.new(1, 'I'),
    Roman.new(4, 'IV'),
    Roman.new(5, 'V'),
    Roman.new(9, 'IX'),
    Roman.new(10, 'X'),
    Roman.new(40, 'XL'),
    Roman.new(50, 'L'),
    Roman.new(90, 'XC'),
    Roman.new(100, 'C'),
    Roman.new(400, 'CD'),
    Roman.new(500, 'D'),
    Roman.new(900, 'CM'),
    Roman.new(1000, 'M')
  ]
end
