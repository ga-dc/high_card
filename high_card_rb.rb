require "pry"

# Use these two arrays to generate a deck of cards.
Ranks = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K" ]
Suits = [ "hearts", "spades", "clubs", "diamonds" ]




def deck_cards
  deck = []

  # Build deck
  Ranks.each_with_index do |rank, index|        #This only seems to work if I make ranks constant
    Suits.each do |suit|
      card = {
        rank: rank,
        suit: suit,
        worth: index
      }
      deck << card
    end
  end
   return deck.shuffle
end

shuffled_deck = deck_cards

def get_players
  players = []
  # players input their names
  # input names are pushed into the players array
  while true do              #I used this while loop structure that Nick discussed in the homework review
    puts "Let's play high card!  Enter your name or press s to start."
    user_input = gets.chomp
    break if user_input === "s"
    players << user_input
  end
  return players
end

players = get_players

def game(players)      #Since you are doing an each loop on players in this method, players was defined outside this method so you need to pass it through as an argument.
  round = []
  #from shuffled_deck array and players array, we need to create a new array of arrays with the player name and corresponding card.
  players.each do |player|            #Because players is defined outside of the game method, it will not be recognized, so you need to pass it through game as an argument.  There is no "global" scope in Ruby.  A variable defined outside a method in Ruby will not be recognized in another method.
    hand = [player, shuffled_deck.pop]
    #shovel new player/card arrays to "round" array
    round << hand
  end
  return round
end

round = game(players) #I can't get this to work!  Game is undefined.  This has to do with calling players.each in the game method.

binding.pry

puts "asdf"
