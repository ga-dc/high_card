# Use these two arrays to generate a deck of cards.
require "pry"

ranks = [ 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K", "A" ]
suits = [ "hearts", "spades", "clubs", "diamonds" ]

players =[]

deck = ranks.product(suits).each do |card| "#{card[0]} #{card[1]}"
end

playing_deck = deck.shuffle

loop do
  puts "#{players.length} players so far. Enter a player name, or type 'play'"
answer = gets.chomp
players << answer
    break if answer == 'play'
  end

players.pop

def play (players)
  @players = players

# How do I get the created players into the array?? 


end



binding.pry
