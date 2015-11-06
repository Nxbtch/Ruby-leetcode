# @param {Integer[]} nums
# @return {Integer}
def missing_number(nums)
  nums.sort!
  nums.each_with_index do |num, idx|
    return idx if idx != num
  end
  return nums.count
end

p missing_number([1])
p missing_number([1, 0])
