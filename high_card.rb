require "pry"

# Use these two arrays to generate a deck of cards.
ranks = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K" ]
suits = [ "hearts", "spades", "clubs", "diamonds" ]

nameofplayers = []

# shuffle both arrays
  deck = ranks.product(suits)
  deck.shuffle!
  p deck
# add values to each arrays (I need help with this part)

# ask each player for their name
nameofplayers
puts "{n} players so far. Enter a player name or type 'play'"

# if you get a name then you add it to a players arrays

nameofplayers = []
nameofplayers.push()

# if you get the word play, then you deal the cards

if nameofplayers = [](play)
   puts "your turn to deal"
 else
   puts "not your turn to deal"
end

# then give each player a card (I need help with this part)
ranks.product(suits).find("A hearts","A spades","A clubs","A diamond") do |pick|
  if ranks.product(pick)
    else
      next
    end
#calculate the highest card (help)

binding.pry
puts "end of file"
