# @param {Integer} n
# @return {String}
def convert_to_title(n)
  str = ""
  while n > 26
    left = n % 26
    str += left == 0 ? "Z" : (left + 64).chr
    n = (n - 1) / 26
  end
  str += (n + 64).chr
  str.reverse
end

p convert_to_title(1)
p convert_to_title(28)
p convert_to_title(52)
p convert_to_title(2147483)
