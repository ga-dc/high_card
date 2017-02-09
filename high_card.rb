require "pry"

ranks = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K" ]
ranks << ranks.shift
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

players.map! do |person|
  {name: person}
end

players.each_with_index do |person, i|
  person[:card] = deck[i]
end

cards_in_play = players.map do |person|
  ranks.index(person[:card][0])
end

puts cards_in_play

winning_card = cards_in_play.max

winners = []

players.each do |person|
  if ranks.index(person[:card][0]) == winning_card
    winners << person[:name]
  end
end

puts "Winners: #{winners}!"

binding.pry
