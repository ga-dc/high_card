# Use these two arrays to generate a deck of cards.
ranks = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K" ]
suits = [ "hearts", "spades", "clubs", "diamonds" ]



# each_with_index: array.each_with_index { |item, index| array[item] = index }
# max: returns item with the maximum value. with integers this is the actual highest value. with strings. it is the value of the index
# shuffle: return new array with elements of old array but shuffled.


# 1. Create deck of cards:
# build deck of shuffled cards
  # need array of cards
  # each card = array
  # card = [rank, suit]
  # card_deck = [card 1, card 2, card 3]

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
# Collect an array of player names
  # Puts Enter a player name or type player
  # Push player names to array
  # Log how many players are in the array
  # User says play


players = []

loop do
  puts'We have #{players.length} so far. Enter the player name.'
  name = gets.chomp.to_s

  break if name == 'play'
  players.push(name)
end

# 3. Deal cards:
  # program deals each player a card
  # Use shuffle?
  player_cards = players.collect do
    card_deck.pop
  end

# 4. High Score:
# Find the highest card score dealt
  # use max?

  high_card = card.max

# 5. Print Winner:
# find winning play name and print it out
