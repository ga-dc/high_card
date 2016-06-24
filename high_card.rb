require "pry"

players = []


# Use these two arrays to generate a deck of cards.

def create_deck
  ranks = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K" ]
  suits = [ "hearts", "spades", "clubs", "diamonds" ]

  deck = []

  ranks.each_with_index do |rank, i|
    suits.each do |suit|
      card = {
        suit: suit,
        rank: rank,
        worth: i
      }
      deck << card
    end
  end

  deck.shuffle!
  return deck
end
puts create_deck

players = []

def get_players
  players.length 
  user_input = gets.chomp
  if (user_input === "play")
    #function for play
  else
    players << user_input
  end

end
puts get_players



binding.pry
puts "end of file"
