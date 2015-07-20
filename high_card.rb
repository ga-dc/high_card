# Use these two arrays to generate a deck of cards.

# change Ace position to highest score
ranks = [2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K", "A" ]
suits = [ "hearts", "spades", "clubs", "diamonds" ]

players = []

# 1. build a deck of cards
deck = []

# ranks.each do |rank|
#   suits.each do |suit|
#     deck.push([rank, suit])
#   end
# end
#
# index number of ranks array becomes score of game by using each_with_index

# ranks.each_with_index do |rank, i|
#         deck.push({
#             score: i,
#             rank: rank
#         })
#     end
# ## in this try, score and rank combos become other array elements. No good.

ranks.each_with_index do |rank, i|
  suits.each do |suit|
    deck.push({
      score: i,
      rank: rank,
      suit: suit,
    })
  end
end

# 2. shuffle the deck
deck.shuffle!

# 3. Collect an array of player names by prompting:
#"{n} players so far. Enter a player name, or type 'play':"

until players.length > deck.length
  puts "#{players.length} players so far. Enter a player name, or type 'play':"
  name = gets.chomp
  if name == "play"
    break
  end
  players.push(name)
end

# 4. Upon "Play", deal each player a card
cards = players.map do |player|
  deck.pop
end

# 5. Find the hightest card score dealt (ACE high)
scores = cards.map do |card|
  card[:score]
end
highest_card = scores.max

# 6. Find the winning player name, hen print out: "Winner(s): {name1, name2, …}!"
winners = []
scores.each_with_index do |score, i|
  if score == highest_card
    winners.push(players[i])
  end
end

puts "Winner(s): #{winners}"
puts cards
