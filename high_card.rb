# Use these two arrays to generate a deck of cards.
ranks = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K" ]
suits = [ "hearts", "spades", "clubs", "diamonds" ]


# creating a deck of cards from above arrays.
deck = []

counter = 1
while counter <= 52 do
    ranks.each do |rank |
        suits.each do |suit|
            deck.push {( # matches up suit and rank, but not shuffled.
            puts deck)
        counter = counter + 1}
end

deck_shuffled = deck.shuffle #not shuffling.
puts deck_shuffled

players = []

#although game isn't shuffling randomly, it provides a more realistic game
#since the unshuffled deck is bound to lead to arguing and 'WAR'

puts "How many people want to play? Please enter a number."
num_players = gets
num_players = num_players.chomp
puts num_players + " people want to play a game of high card."
