class Game
  attr_reader :players
  def ranks
    [2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K", "A" ]
  end
  def suits
    [ "♥", "♠", "♣", "♦" ]
  end
  def initialize
    @players = Player.welcome
  end ############   End Game.initialize Method ############
  def build_deck
    fulldeck = []
    self.ranks.each do |rank|
      self.suits.each do |suit|
        card = [rank, suit]
        fulldeck << card
      end
    end
    return fulldeck
  end ############   End Game.build_deck Method ############
  def shuffle_deck(deck)
    shuffled_deck = deck.shuffle
  end ############   End Game.shuffle_deck Method ############
  def deal_cards(shuffled_deck)
    hands = []
    # count the items from the players array to find out how many cards to
    # deal out
    cards_to_deal = @players.length
    # take a card from the shuffled_deck and push into the hands array for each
    # player in the players array
    i = cards_to_deal
    while i > 0
      dealt_card = shuffled_deck.shift
      hands << dealt_card
      i -= 1
    end
    hands
  end ############   End Game.deal_cards Method ############


  def find_highest_card(hands)
    values_array = []
    hands.each_with_index do |card, index|
      puts @players[index]+" had #{card}"
      card_value = ranks.index(hands[index][0])

      puts "======================"
      puts card_value
      puts "======================"
      values_array << card_value
      puts values_array
    end
    # puts "Player 1: #{hands[0][0]} #{ranks.index(hands[0][0])}"
    # puts "Player 2: #{hands[1][0]} #{ranks.index(hands[1][0])}"
    ## Compare all the values (cards) in the hands array to find out which cards
    ## has the highest values


    # highest_cards = hands.max
    # puts "The Winning Hand is: "
    # highest_cards
  end ############   End Game.find_highest_card Method ############
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

# 4. Find the highest card score dealt (Aces high).
# 5. Find the winning player name, then print out:
# 	* **"Winner(s): {name1, name2, …}!"**
#
# # ### Bonus I
# #
# # Print out *one* of the following outcomes:
# #
# # * **"The winner is {name}!"**
# # * **"It's a tie between {name1, name2, …}!"**
# #
# # ### Bonus II
# #
# # Have the game redraw cards for all players in the case of a tie.
# ## 3. Map players into cards
# cards = players.map do |player|
#   deck.pop
# end
#
#
# # 4. Find highest score
# scores = cards.map do |card|
#   card[:score]
# end
#
# high_score = scores.max
#
#
# # 5. Select winners
# winners = []
#
# scores.each_with_index do |score, index|
#   winners.push(players[index]) if score == high_score
# end
#
# puts "Winner(s): #{winners.join(', ')}"
# puts cards
