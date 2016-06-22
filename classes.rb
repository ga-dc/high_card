class Game
  attr_reader :players
  def initialize
    @players = Player.welcome
  end ############   End Game.initialize Method ############
  def build_deck(ranks, suits)
    fulldeck = []
    ranks.each do |rank|
      suits.each do |suit|
        card = [rank, suit]
        fulldeck << card
      end
    end
    return fulldeck
  end ############   End Game.build_deck Method ############
  def shuffle_deck(deck)
    shuffled_deck = deck.shuffle
  end ############   End Game.shuffle_deck Method ############
end ############   End Game class ############
################ Begin Player class below #######################
class Player
  def self.welcome
    players = []
    puts "Welcome to High Card!!!"
    response = ""
    while response != "play"
      players << response unless response.empty?
      puts "#{players.count} players so far. Enter a player name, or type 'play':"
      response = gets.chomp
    end
    return players
  end ############   End self.welcome Method ############
end ############   End Player class ############

# ## Let's Play High-Card-Wins
#
# Game time!
#
# **Methods to research:**
#
# * `each_with_index`
# * `max`
# * `shuffle`
#
# **Tasks:**

#
# 2. Collect an array of player names by prompting:
# 	* **"{n} players so far. Enter a player name, or type 'play':"**
# 3. Upon *"play"*, deal each player a card.
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
#
