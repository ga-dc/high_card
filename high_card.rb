# Use these two arrays to generate a deck of cards.
# require 'pry'
ranks = [2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K", "A"]
suits = [ "hearts", "spades", "clubs", "diamonds" ]

players = []

  class PlayersHand
    ranks.each_with_index do |rank, suit|
      suits.each do |suit|
        deck.push({
          value: rank.length
          suit: suit
    })
  end
end

return deck.shuffle

	while true
	  puts "#{players.length} so far. Enter the names of 2 players"
	  name = gets.chomp
	  break if players.length == 2
	  players.push(name)
	end

	cards = players.map do |player|
	  deck.pop
	end

# binding.pry
  # puts "End of file"
