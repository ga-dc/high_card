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
    puts "#{rank} #{suit}"
    deck.push([rank, suit])
    deck.shuffle!
  end
end

puts deck.to_s

players = [{
            name = ""
            hand = []
            score = 0
  }]

puts '{n} players so far. Enter a player name, or type play'
gets.chomp
