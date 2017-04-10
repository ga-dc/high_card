# Use these two arrays to generate a deck of cards.


ranks = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K" ]
suits = [ "hearts", "spades", "clubs", "diamonds" ]
deck = []

suits.each do |suit|
  ranks.each do |rank|
    card = [ rank, suit ] #combines the two arrays into a new array
    deck << card
  end
end

p deck.shuffle
# deck = cards
# players = []

# while true
#   puts "#{players.length} players so far. Enter a player name, or type 'play:'"
#   name = gets.chomp
