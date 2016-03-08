require 'pry'

# Use these two arrays to generate a deck of cards.
ranks = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K" ]
suits = [ "hearts", "spades", "clubs", "diamonds" ]

players = []

# card = {ra}

# build a deck
  # initialize an empty deck
  # loop through rank
    # .each with index -> to pull the worth of a card
    #loop suits
      #push each pair into the deck
    # shuffle the deck

  def build_deck(ranks, suits)
    deck = []
      ranks.each_with_index do |rank, i|
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
    players []
  # prompt user to enter name
    # or enter play
      #take each player entered
        #add to the players array
      while true
        puts "Welcome. Enter your name or press p to play"
        name = gets.chomp.downcase
        players << name
        break if name == 'p'
        end
      #break
end








deck = build_deck(ranks, suits)
binding.pry

puts "fixes pry error"
