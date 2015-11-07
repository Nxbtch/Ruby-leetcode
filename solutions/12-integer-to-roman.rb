# @param {Integer} num
# @return {String}
def int_to_roman(num)
  return nil unless num.between?(0, 4000)
  map = [
    ['', 'I', 'II', 'III', 'IV', 'V', 'VI', 'VII', 'VIII', 'IX'],
    ['', 'X', 'XX', 'XXX', 'XL', 'L', 'LX', 'LXX', 'LXXX', 'XC'],
    ['', 'C', 'CC', 'CCC', 'CD', 'D', 'DC', 'DCC', 'DCCC', 'CM'],
    ['', 'M', 'MM', 'MMM']
  ]
  num = num.to_s.reverse.split('').map(&:to_i)
  results = []
  num.each_with_index do |n, idx|
    results << map[idx][n]
  end
  results.reverse.join
end

p int_to_roman(1) # I
p int_to_roman(12) # XII
p int_to_roman(91) # XCI
p int_to_roman(100) # C
p int_to_roman(1000) # M
p int_to_roman(5000) # nil
