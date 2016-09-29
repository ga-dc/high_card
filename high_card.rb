require 'pry'
ranks = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K" ]
suits = [ "hearts", "spades", "clubs", "diamonds" ]



deck = []
ranks.each do |rank|
  suits.each do |suit|
deck << "#{rank}, #{suit}"
deck.shuffle!
  end
end


players = []
puts "Enter name of player one:"
player1 = gets.chomp
players.push(player1)
if players.length < 2
  puts "Enter name of player two:"
  player2 = gets.chomp
  players.push(player2)
end

puts players

table = [ ]

players.length.times do
  table.push deck.pop
end
puts table.to_s


binding.pry
puts "The End"
