# Use these two arrays to generate a deck of cards.
ranks = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K" ]
suits = [ "hearts", "spades", "clubs", "diamonds" ]

players = {}
deck =[]

suits.each{ |suit|
    ranks.each_with_index{|val,index|
       deck.push(Array.new.push(suit).unshift(val))
    }
}

until @enterPlayer == "play"

  puts "#{players.length} players so far. Enter a players name, or type 'play': "
  @enterPlayer = gets.chomp.to_s
  if @enterPlayer == "play"
     next
  else
    players[@enterPlayer] = nil
  end
end

# deal each player a card
# find the highest card score delt Aces high
# find the winning playe rname and then print out
