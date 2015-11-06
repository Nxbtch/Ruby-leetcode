# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
def two_sum(nums, target)
  hash = {}
  nums.each_with_index do |num, idx|
    return [hash[num] + 1, idx + 1] if hash.include?(num)
    store = target - num
    hash[store] = idx
  end
end

p two_sum([2, 7, 11, 15], 9)
p two_sum([0, 4, 3, 0], 0)
