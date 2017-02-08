ranks = [2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K", "A"]
suits = ["clubs", "diamonds", "hearts", "spades"]
deck = ranks.product(suits).shuffle!
players = []

loop do
  puts "#{players.length} players so far. Enter a player name, or type 'play':"
  input = gets.chomp
  if input != "play"
    players << {name: input}
  else
    break
  end
end

for player in players do
  player[:card] = deck.shift
end

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

# require "pry"
# binding.pry
