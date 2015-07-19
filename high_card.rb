# Use these two arrays to generate a deck of cards.
ranks = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K" ]
suits = [ "hearts", "spades", "clubs", "diamonds" ]
$players = []
deck = []
# 1. Build a deck of shuffled cards.
suits.each do |suit|
  ranks.each_with_index do |rank, i|
    deck.push([ranks[i], suit])
  end
end

# 2. Collect an array of player names by prompting:"{n} players so far. Enter a player name, or type 'play':"
def get_player_names(name_prompt)
  puts name_prompt
  name = gets.chomp
  unless (name == "play")
    $players.push(name)
    puts $players.size
    get_player_names(name_prompt)
  end
  # puts "The players are #{$players}"
end
get_player_names("#{$players.size} players so far. Enter player name or type 'play':")
# ERICA: Make the counter in the prompt update properly

# 3. Upon *"play"*, deal each player a card.
new_hand = {}
$players.each_with_index do |player, i|
  new_hand[player] = deck.shuffle[i]
  puts "#{player}'s card is: #{new_hand[player]}"
end

# 4. Find the highest card score dealt (Aces high).
hand_values = []
new_hand.each_value do |value|
  hand_values.push(value[0].to_i)
end
high_card = hand_values.max
puts high_card

# 5. Find the winning player name, then print out:
# 	* **"Winner(s): {name1, name2, …}!"**
# Return all keys whose values include high_card. 
