# @param {String} s
# @return {Integer}
def title_to_number(s)
  val = []
  s = s.reverse
  s.split('').each_index do |idx|
    val << (s[idx].ord - 64) * (26 ** idx)
  end
  val.reduce(:+)
end

p title_to_number("A")
p title_to_number("Z")
p title_to_number("AA")
p title_to_number("AB")
p title_to_number("AD")
