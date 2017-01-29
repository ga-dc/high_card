# Use these two arrays to generate a deck of cards.
ranks = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K" ]
suits = [ "hearts", "spades", "clubs", "diamonds" ]

deck = []
  ranks.each do |suit|
    suits.each do |rank|
      card = [suit, rank]
    end
  end

  deck.shuffle
end

players = []
while true
  puts "#{players.length} players so far. Enter a player name, or type 'play':"
  name = gets.chomp

  break if name == 'play'
  players.push(name)

end

# Can't figure out where to go from here. Even with the solution,
# this was a difficult assignment for me. Need review on most things ruby.
# part one (deck) was done with help from Adrian, and also his solution from the ice cream example.
# part two (players) i got from the solution. I understand it by looking at it, but I'm
# still not sure how to get the rest to function
