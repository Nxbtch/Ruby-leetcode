require 'set'
# @param {Integer[]} nums
# @return {Boolean}
def contains_duplicate(nums)
    return false if nums.count < 2
    nums = nums.sort
    nums[0...-1].each_index do |idx|
       return true if nums[idx] == nums[idx+1]
    end
    false
end
