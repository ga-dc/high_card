# Use these two arrays to generate a deck of cards.
ranks = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K" ]
suits = [ "hearts", "spades", "clubs", "diamonds" ]

players = []

deck = []

for rank in ranks
  for suit in suits
    deck.push([rank, suit])
  end
end

deck.shuffle!

input = ""
names = []

### 2. Collect an array of player names by prompting: ###
### * **"{n} players so far. Enter a player name, or type 'play':"** ###

until input == "play"
  puts "#{names.length} players so far. Enter a player name, or type 'play':"
  input = gets.chomp
  if input != "play"
    names.push(input)
  end
end

puts names

### 3. Upon *"play"*, deal each player a card. ###
played_cards = []
for player in names
  puts played_cards.push(deck.pop)
end

puts "#{played_cards}"

### 4. Find the highest card score dealt (Aces high). ###
#card_values array is for quickly accessing the values of all dealt cards
card_values = []
# Convert face cards to corresponding values
for card in played_cards
  if card[0] == "J"
    card[0] = 11
  elsif card[0] == "Q"
    card[0] = 12
  elsif card[0] == "K"
    card[0] = 13
  elsif card[0] == "A"
    card[0] = 14
  end

  card_values.push(card[0])
end

#played cards
puts "#{played_cards}"
#value of the played cards
puts "#{card_values}"

# max card value played
puts "#{card_values.max()}"


# Find the highest card value, find which players have that card


# 5. Find the winning player name, then print out:
# 	* **"Winner(s): {name1, name2, …}!"**
