# @param {Integer[]} nums
# @return {Integer[]}
def single_number(nums)
    hash = {}
    nums.each do |num|
       if hash[num] == nil
          hash[num] = 1
       else
          hash.delete(num)
       end
    end
    hash.keys
end
