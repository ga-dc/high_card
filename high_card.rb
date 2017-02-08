require "pry"

ranks = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K" ]
suits = [ "hearts", "spades", "clubs", "diamonds" ]

deck = ranks.product(suits).shuffle

players = []

player_name = ""

loop do
  puts "#{players.length} players so far. Enter a player name, or type 'play'"
  player_name = gets.chomp
  break if player_name == "play"
  players << player_name
end

players.map!{|person| {name: person}}

players.each_with_index do |person, i|
  person[:card] = deck[i]
end

binding.pry
