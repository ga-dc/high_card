# Use these two arrays to generate a deck of cards.
require "pry"

ranks = [ 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K", "A" ]
suits = [ "hearts", "spades", "clubs", "diamonds" ]

players =[
  
]

deck = ranks.product(suits).each do |card| "#{card[0]} #{card[1]}"
end

playing_deck = deck.shuffle

def enter_players
  puts "please enter player name"
    answer = gets.chomp
    if answer == "play"
      run_game
    else players << answer
end

def run_game (players)
  players.each do |players|
    puts " #{[:name]} draws playing_deck[0]"

end



binding.pry
