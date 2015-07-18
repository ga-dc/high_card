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

until input == "play"
  puts "#{names.length} players so far. Enter a player name, or type 'play':"
  input = gets.chomp
  if input != "play"
    names.push(input)
  end
end

puts names
#
# 2. Collect an array of player names by prompting:
# 	* **"{n} players so far. Enter a player name, or type 'play':"**
# 3. Upon *"play"*, deal each player a card.
# 4. Find the highest card score dealt (Aces high).
# 5. Find the winning player name, then print out:
# 	* **"Winner(s): {name1, name2, …}!"**
