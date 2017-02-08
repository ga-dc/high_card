require "pry"
# Use these two arrays to generate a deck of cards.
ranks = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K" ]
suits = [ "hearts", "spades", "clubs", "diamonds" ]

players = []
cards = []
deck = []


ranks.each_with_index do |rank, index|
  suits.each do |suit|
    deck.push( [rank, suit])
  end
end

deck.shuffle!


p deck

players = []
loop do
  name = ""
  puts "#{players.length} players so far. Enter a player name, or type 'play':"
  name = gets.chomp
  break if name == "play"
  players.push([name: name],)
end




binding.pry
 puts "end of file"
