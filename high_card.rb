# Use these two arrays to generate a deck of cards.

def card_game
ranks = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K" ]
suits = [ "hearts", "spades", "clubs", "diamonds" ]


# 1. Create deck of cards:
  card_deck = []
  ranks.each do |r|
    suits.each do |s|
      card_deck.push({
        rank: r,
        suit: s
      })
    end
  end

  return card_deck

# 2. Populate players:
players = []

loop do
  puts'We have #{players.length} so far. Enter the next player name or enter \'play\' to begin.'
  name = gets.chomp.to_s

  break if name == 'play'
  players.push(name)
end

# 3. Deal cards:
  return card_deck.shuffle
  player_cards = players.collect do
    card_deck.pop
  end

# 4. High Score:
# Find the highest card score dealt
  # use max?
  point = card_deck.collect do
  end
  #high_card = point.max

# 5. Print Winner:
# find winning play name and print it out

# Comparing cards - from the review
end

card_game()
puts "ruby works"
