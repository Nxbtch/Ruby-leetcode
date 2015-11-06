# @param {Integer[]} nums
# @return {Integer}
def majority_element(nums)
  hash = Hash.new{|h,k| h[k] = 0 }
  nums.each do |num|
    hash[num] += 1
  end
  target = nums.count / 2
  hash.each_pair do |key, val|
    return key if val > target
  end
end
