# @param {Integer} n
# @return {Integer}

@hash = Hash.new{|hash, key| hash[key] = nil }
def climb_stairs(n)
	if @hash[n]
		return @hash[n]
	end

	if n == 1
		@hash[1] = 1
		return 1
	end

	if n == 2
		@hash[2] = 2
		return 2
	end
	@hash[n] = climb_stairs(n-1) + climb_stairs(n-2)
	@hash[n]
end

p climb_stairs(4)
p climb_stairs(50)