# @param {Integer} num
# @return {Integer}
def add_digits(num)
    num - 9 * ( num % 9 - 1 )
end
