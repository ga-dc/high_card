require "pry"

ranks = [2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K", "A"]
suits = [ "hearts", "spades", "clubs", "diamonds" ]
$players = []
$deck = []
$hands = []

# build deck

def build_deck (rank, suit, worth)
  # deck = [{rank:,suits:,worth:}]
  deck = []
  ranks.each_with_index do |rank, index|
    suits.each do |suit|
      # value function
      card = {
        suits: suit,
        rank: rank,
        worth: index
      }
      deck << card
    end
  end

  return deck.shuffle
end

# get player info
puts "Welcome to High Card. How many players?:"
players =  gets.chomp
players.each do |player|
  puts "Please enter your name:"
  names.each do |name|
  puts "Welcome" + name + "! Get ready to play!"
else
end


deal function

find highest card function

deck = build_deck(ranks, suits)
choose_players

binding.pry
puts "fixes pry error"
