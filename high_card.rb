require "pry"
# Use these two arrays to generate a deck of cards.
ranks = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K" ]
suits = [ "hearts", "spades", "clubs", "diamonds" ]

$players = []

def build_deck(ranks, suits)
  # build a deck
  # initialize an empty deck
  deck = []
  # loop through ranks
  # .each with index -> to pull the worth of a card
  ranks.each_with_index do |rank, index|
    suits.each do |suit|
      # loops suits
      # push each pair into the deck
      card = {
        suit: suit,
        rank: rank,
        worth: index
      }
      deck << card
    end
  end
  # shuffle the deck
  return deck.shuffle
end

def pick_players
  while true do
    puts 'Welcome. Enter your name or press "p" to play.'
    name = gets.chomp.downcase
    break if name == 'p'
    $players << name
  end
end


deck = build_deck(ranks, suits)
pick_players
binding.pry
puts "end"
