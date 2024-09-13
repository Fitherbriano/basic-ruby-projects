def pick (prices)
  buy = 0
  sell = 0
  profit = 0
  prices.each_with_index do |buy_price, buy_date|
    prices.each_with_index do |sell_price, sell_date|
      if sell_date > buy_date
        if sell_price - buy_price > profit
          profit = sell_price - buy_price
          buy = buy_date
          sell = sell_date
        end
      end
    end
  end
  picked = [buy, sell]
  return picked
end

puts 'Welcome to stock picker!' 
puts 'Get rich instantly with our trading bot. Just put how many days do you trade and what are the stock prices for each days.'
puts 'How many trading days?:'
days = gets.chomp
days = days.to_i
i = 0
prices = Array.new
while i < days do
  puts "price day #{i}:"
  price = gets.chomp
  prices.push(price.to_i)
  i += 1
end

puts "best day to buy:#{pick(prices)[0]}"
puts "best day to sell:#{pick(prices)[1]}"