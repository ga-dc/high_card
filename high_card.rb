# Use these two arrays to generate a deck of cards.

ranks = [ 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K", "A" ]
suits = [ "hearts", "spades", "clubs", "diamonds" ]
players = []
deck = []
deck_shuffle = []
shuffled_fiftytwo = []
deck2 = []
name2 = []

# prompts player
print "What is your name?"
name = gets.chomp
   name2 = name.capitalize
name.capitalize!
print "Hello, " + name + ". Welcome to war!"
print "Play War!"

# create deck
ranks.each do |rank|
   suits.each do |suit|
      deck.push([rank,suit])
   end
end

deck = ranks.product(suits)
   deck2 = deck.inspect
deck.shuffle
puts deck.shuffle





# puts deck.shuffle.prompting
# players.length
