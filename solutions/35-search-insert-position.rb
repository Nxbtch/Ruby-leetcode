# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer}
def search_insert(nums, target)
  count = nums.count
  nums.each_with_index do |num, idx|
    if target <= num
      nums.insert(idx, target)
      return idx
    elsif idx == count - 1
      nums.insert(count, num)
      return count
    end
  end
end

p search_insert([1,3,5,6], 5) # 2
p search_insert([1,3,5,6], 2) # 1
p search_insert([1,3,5,6], 7) # 4
p search_insert([1,3,5,6], 0) # 0
