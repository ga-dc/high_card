# require "pry"

# Use these two arrays to generate a deck of cards.
ranks = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K" ]
suits = [ "hearts", "spades", "clubs", "diamonds" ]
deck = []
cards_dealt = []

ranks.each_with_index do |rank, i|
  suits.each_with_index do |suit, i|
    deck << [rank, suit]
  end
end

players = []
loop do
  puts "#{players.length} players so far. Enter a player name, or type 'play' to start the game"
  user_input = gets.chomp

  break if user_input == "play"
  players << user_input
  puts players
end

deck = deck.shuffle

## Deal cards to players
players.each_with_index do |player, index|
  cards_dealt << {player: player, suit: deck[index][1], rank: deck[index][0]}
end

## Who has the strongest card??
cards_dealt.each do |cards|
  
end

# binding.pry
