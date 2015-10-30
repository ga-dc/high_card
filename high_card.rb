# Use these two arrays to generate a deck of cards.
ranks = [2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K", "A"]
suits = [ "hearts", "spades", "clubs", "diamonds" ]

deck = []
ranks.each_with_index do |rank, index|
	suits.each do |suit|
		deck.push({rank: rank, suit: suit, value: index+2})
	end
end

ranks.shuffle
suits.shuffle

# Shuffling/randomizing the deck
deck.shuffle

# Naming players
players = []
puts players.length.to_s = "{n} players so far. Enter a player name, or type 'play':"
name = gets.chomp.to_s
if name === "play"
  players.push(name)
end

#Deal cards
played_cards = []
i = 0
while (i<players.length)
  shuffled_deck[i][:player] = players[i]
  played_cards.push(shuffled_deck[i])
  i += 1
end

#highest score
max = values.max

#find winner
winners = []
played_cards.each do |card|
  if card[:value] === max
    winners.push(card[:player])
  else
  end
end