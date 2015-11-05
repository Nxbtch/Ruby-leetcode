# @param {Integer[]} prices
# @return {Integer}
def max_profit(prices)
    return 0 if prices.count == 0 || prices.count == 1
    profits = []
    prices[0...-1].each_index do |idx|
       profits << [prices[idx + 1] - prices[idx] , 0].max
    end
    profits.reduce(:+)
end
