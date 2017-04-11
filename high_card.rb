# require "pry"

# Use these two arrays to generate a deck of cards.
ranks = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K" ]
suits = [ "hearts", "spades", "clubs", "diamonds" ]
deck = []
cards_dealt = []

ranks.each_with_index do |rank, i|
  suits.each do |suit|
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

cards_dealt = cards_dealt.each do |cards|
  if cards[:rank] == "A"
    cards[:rank] = 14
  elsif cards[:rank] == "K"
    cards[:rank] = 13
  elsif cards[:rank] == "Q"
    cards[:rank] = 12
  elsif cards[:rank] == "J"
    cards[:rank] = 11
  end
end

## Who has the strongest card??
cards_in_play = []
winners = []

## Sort card ranks from highest to lowest
cards_dealt.sort_by do |cards|
  -cards[:rank]
  cards_in_play << cards[:rank]
end

puts cards_dealt

# binding.pry
