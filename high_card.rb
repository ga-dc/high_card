# Use these two arrays to generate a deck of cards.
ranks = [2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K", "A" ]
suits = [ "hearts", "spades", "clubs", "diamonds" ]
deck = []

players = []

# create deck
# ranks.each do |rank|
#   suits.each do |suit|
#     deck << [rank, suit]
#   end
# end

ranks.each_with_index do |rank, index|
  suits.each do |suit|
    deck << ({
      score: index,
      rank: rank,
      suit: suit
    })
  end
end

# deck.each do |deck|
#   puts deck[:score]
# end

# get players
while true
  puts "#{players.length} so far. Enter a player name, or type 'play':"
  name = gets.chomp

  break if name == "play" || name == "Play"
  players.push(name)

end

# give each player a card
for player in players do
  # give them a card from the shuffled deck
  users_card = deck.shuffle.pop()
  # puts users_card[:score]
end

# #winning score
# winning_score = deck[:score].max
#
# puts winning_score
