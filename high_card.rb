require "pry"

values  = [2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K", "A"];
suits   = ["Clubs", "Diamonds", "Hearts", "Spades"];

hand = []


deck = []
suits.each do |suit|
  values.each_with_index do |value, index|
    deck << ({value: value, suit: suit, index: index})
  end
end


shuffle_deck = deck.shuffle

players = []
n = players.length
puts "#{n} players so far. Enter a player name, or type 'play'"

get_players = gets.chomp
while get_players != "play"
  players << get_players
  get_players = gets.chomp
end

players.length.times do |i|
  card = shuffle_deck.shift
  hand << ({name: players[i], card: card})
end

winner = hand.max_by {|player| player[:card][:index]}


binding.pry

"End of file"
