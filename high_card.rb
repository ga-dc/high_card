# Use these two arrays to generate a deck of cards.
ranks = [2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K", "A" ]
suits = [ "hearts", "spades", "clubs", "diamonds" ]

players = []

deck = []

ranks.each do |rank|
  suits.each do |suit|
    deck.push [rank, suit]
  end
end

deck.shuffle!

n = 0
user_input = ""

until (user_input == "play") do
  puts "#{n} players so far. Enter a player name, or type 'play':"
  user_input =  gets.chomp.to_s
    players.push [user_input] if user_input != "play"
    n +=1
end

puts players

players.length.times do
  deck.pop
  puts deck.pop
  # puts deck.pop
end

# winner = deck.pop.to_i.max
# puts winner

# deck.each_with_index do |value, index|
#   puts "#{index} is #{value}"
# end
