# @param {Integer} n, a positive integer
# @return {Integer}
def hamming_weight(n)
  n.to_s(2).split('').select do |num|
    num == '1'
  end.count
end

p hamming_weight(2)
p hamming_weight(11)
p hamming_weight(4)
