# @param {String} s
# @return {Integer}
def roman_to_int(s)
  val_map = {"M" => 1000, "D" => 500, "C" => 100, "L" => 50, "X" => 10, "V" => 5, "I" => 1}
  s = s.reverse.split('')
  last = nil
  result = []
  s.each do |chr|
     val = val_map[chr]
     result << ( [ -val ] * 2 ) if last && val < last
     result << val
     last = val
  end
  result.flatten.reduce(:+)
end

p roman_to_int('MMMCMXCIX')
