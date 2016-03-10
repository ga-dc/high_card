require "pry"

# Use these two arrays to generate a deck of cards.
Ranks = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K" ]
Suits = [ "hearts", "spades", "clubs", "diamonds" ]



deck = cardDeck
players = []

while true
  puts "#{players.length}" enter name or type "play"
  name = get.chomp
break name == "play"



#create a deck!
def build (ranks, suits)
  deck = []
  Ranks.each_with_index do |rank, index|
    Suits.each do |suit|
        card = {
          Suits: suit,
          Ranks: rank,
          worth: index
        }
    deck << card
  end
end

return deck.shuffle

end

deck = build(Ranks, Suits)

binding.pry
