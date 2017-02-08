# Use these two arrays to generate a deck of cards.
deck = [ ]

ranks = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K" ]

suits = [ "hearts", "spades", "clubs", "diamonds" ]
index = 0

while index < suits.length
  index += 1
end

ranks.each do |rank|
  suits.each do |suit|
    # puts "#{rank} #{suit}"
    deck.push([rank, suit])
    deck.shuffle!
  end
end

players = []



# puts "#{players.length} players so far. Enter a player name, or type play"
while true
  puts "Enter name"
  name = gets.chomp
  if name == "play"
    break
  end
  players.push name
end
puts players

table = [ ]

players.length.times do
  table.push deck.pop
end
puts table.to_s

#  while or until loops
# each_with_index
