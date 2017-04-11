
ranks = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K" ]
suits = [ "hearts", "spades", "clubs", "diamonds" ]
deck = []
min_players = 2
num_of_cards = 1


puts "Welcome to High Card"
print "Enter number of players:"
  player_count = gets
  player_count = player_count.to_i

if player_count >= min_players

  (0...player_count).each do |index|
  print "Enter name for player #{index + 1}:"
  name = gets
  name = name.chomp
  #num_of_cards << player.new(name, num_of_cards)
  players = [min_players, num_of_cards]
# continue from step 3
end
else
  puts "There should be at least #{min_players}"
end

# 1. Builds the deck of shuffled cards
suits.each do |suit|
  ranks.each do |rank|
    card = [ rank, suit ] #combines the two arrays into a new array
    deck << card
  end
end

p deck.shuffle
