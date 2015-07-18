# Recommended Books by Betsy of Optoro
# Eloquent Ruby by Russ Olsen
# Practical Object-Oriented Design in Ruby by Sandi Metz
# Rails Documentation Guides

deck = []
players = []
ranks = [2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K", "A"]
trump = [14, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13 ]
suits = [ "Hearts", "Spades", "Clubs", "Diamonds" ]
input = nil
players = []
hands = []

ranks.each do |rank|
  suits.each do |suit|
    deck.push([rank,suit])
  end
end

ranks.each_with_index do |value, index|
    puts "#{index}: #{value}"
end

deck.shuffle!

while (input != "PLAY") do
  puts "#{players.length} players so far. Enter a player, name or type 'play' to begin:"
    input = gets.chomp.upcase
        if input != "PLAY"
          players.push(input)
        end
end

      for i in (0..(players.length - 1)) do
          hands.push([players[i],("#{deck[i][0]} of #{deck[i][1]}")])
      end
      puts hands.inspect


# use max to determine highest index value each player has

# possible solutions: 1. Reformat hands as an array, ensure each with index includes
#

# * `max`

# 4. Find the highest card score dealt (Aces high).
# 5. Find the winning player name, then print out:
# 	* **"Winner(s): {name1, name2, …}!"**
#
# ### Bonus I
#
# Print out *one* of the following outcomes:
#
# * **"The winner is {name}!"**
# * **"It's a tie between {name1, name2, …}!"**
#
# ### Bonus II
#
# Have the game redraw cards for all players in the case of a tie.
