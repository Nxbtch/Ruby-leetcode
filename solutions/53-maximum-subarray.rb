# @param {Integer[]} nums
# @return {Integer}
def max_sub_array(nums)
    max = 0
    
    nums.each_index do |i|
    	next if i == 0
    	nums[i] = [nums[i], nums[i] + nums[i-1]].max
    end
    
    nums.max
end

p max_sub_array([-2,1,-3,4,-1,2,1,-5,4])
p max_sub_array([-2, 1])