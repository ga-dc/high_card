require 'pry'

ranks = [2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K", "A" ]
suits = [ "hearts", "spades", "clubs", "diamonds" ]
players = []

def build_deck(ranks, suits)
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

while true
  puts "#{players.length} so far. Enter a player name, or type 'p'"
  name = gets.chomp

  break if name == 'p'
  players << name
end




shuffledeck = build_deck(ranks,suits)
binding.pry
puts "fixes pry error"

=begin
require 'pry'
# Use these two arrays to generate a deck of cards.
ranks = [2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K", "A" ]
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
def choose_players
  while true do
    puts "Welcome. Enter your name or press 'p' to play"
    name = gets.chomp.downcase # working with strings
    break if name == 'p'
    $players << name
  end
end


deck = build_deck(ranks, suits)
#choose_players
binding.pry
puts "fixes pry error"
=end
