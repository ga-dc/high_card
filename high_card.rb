require 'pry'

# Use these two arrays to generate a deck of cards.
ranks = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K" ]
suits = [ "hearts", "spades", "clubs", "diamonds" ]
$players = []
    def build_deck(ranks, suits)
      #build a deck
        #initialize an empty deck
      deck = []

      ranks.each_with_index do |rank, index|
        suits.each do |suit|

          card = {
            suit: suit,
            rank: rank,
            worth: index
          }
          deck << card
      end
    end
    return deck.shuffle
end

def choose_players
  # prompt user to enter name
    #or enter play
      # take each player entered
        #add to the our players array
  while true do
    puts "Welcome. Enter your name or press 'p' to play"
    name = gets.chomp.downcase # working with strings
    break if name == 'p'
    $players << name
    #break
  end
end


deck = build_deck(ranks, suits)
choose_players
binding.pry
puts "fixes pry error"
