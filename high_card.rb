
def pretty_list(list) # Pretty print a simple /ist
  if list.size == 0 # For an empty list
    pretty = "" # Nothing to print
  elsif list.size == 1 # For a single item list
    pretty = list[0] # print the item
  else  # otherwise, print all but the last item joined by commas, then
        # an & and the last item. thus, [2,3,4,6] would return "2, 3, 4 & 6"
    pretty = list[0..-2].join(", ") + " & "  + list[-1]
  end
  return pretty
end

def build_deck(ranks, suits) #Build a deck of cards for all ranks and suits
  new_deck = []
  ranks.each do |rank| # Iterate over all ranks
    suits.each do |suit| # Iterate over all suits
      card = { :rank => rank, :suit => suit} # Create a card object with
                                             # rank & suit properties
      new_deck.push(card) # Put the new card on the deck
    end
  end
  return new_deck
end

def get_player(msg) # Ask for a new player, with an optional message
  puts "Enter the name of the next player."
  puts msg if msg
  return gets.chomp! # Not sure if I need the ! but it wont hurt
end

def get_players()
  player_list = []
  add_more = true # We start needing to add more players sincw we have none
  until player_list.size >= 2 and not add_more # We need at least two players
                                               # and we'll add more till the player
                                               # says to stop
    if player_list.size < 2 # if we have less than teo playrrs
      # ask for more
      new_name = get_player("There is a minimum of two players. Please add another.")
    else
      # tell the user how to srtop adding
      new_name = get_player("Enter play to stop adding players.")
    end
    # IF the user enters the name play, stop adding
    # otherwise, add the new name to the list of names
    new_name.downcase == "play" ? add_more = false : player_list.push(new_name)
  end
  return player_list
end

def deal(player_list, deck) # Deal a card to each player
  hand = [] # Array listing each player's name and xard
  player_list.each do |player| # For each player
    card = deck.pop # try to deal a card
    if card # If there is a card
      hand.push({:player => player, :card => card}) # Assign it to the player
    else
      # If we can't pop a card, we'v exahusted the desk, so just give up.
      # It's hardly graceful, but i've gone well beyond the scope of this
      # assignment anyway.
      abort("Ran out of cards. Cannot continue. Call it a tie and try 52 Pickup next time.")
    end
  end
  return [hand, deck] # Return the hand and the desk minus the dealt cards
end

def get_winners_and_losers(hand) # Get all of the winning players
                      # Hand must already be sorted, from highest to lowest rank
  winners = []
  winners.push(hand.pop()) #Get the first high ranking card and add to the winners list
  while winners[-1][:card][:rank] == hand[-1][:card][:rank] # if the next card has the samr rank
    winners.push(hand.pop()) # Add it to the winnrs list
    break if hand.size == 0 # Everyone tied
  end
  return [winners, hand] # Winners contains the winners, hand still'
                         # contains anyeomne who did not win
end

def player_string(winner) # Turn a player, rank and suit into something readable
  return winner[:player] + " with the " + winner[:card][:rank].to_s + " of " + winner[:card][:suit]
end

def play_game() # Play the game
  # Use these two arrays to generate a deck of cards.
  ranks = [2, 3, 4, 5, 6, 7, 8, 9, 10, "Jack", "Queen", "King", "Ace" ]
#  ranks = [1,2,3,4] # Uncomment this to make ties more likely for testing
  suits = [ "hearts", "spades", "clubs", "diamonds" ]
  deck = build_deck(ranks,suits).shuffle
  players = get_players() # Get ther list of players
  while (players.size != 1) # While we're not down to a single winner
    hand, deck = deal(players, deck) # Deal out the cards, and get the hand
                                     # and the desk minus the new cards
    hand = hand.sort_by{ |t| ranks.index(t[:card][:rank]) } # Sort the hands by ranks
    losers = []
    winners, losers = get_winners_and_losers(hand) # Get all of the players with the high rank
    players = []
    winner_desc = []
    winners.each do |winner| # For each winner
      players.push(winner[:player]) # And the name to the new player list, in case
                                    # we keep going due to a tie.
      winner_desc.push(player_string(winner)) # Add a Englih descriprion of the player
                                               # And his card
    end
    if (winner_desc.size == 1) # If there's one winner, we have a winner
      puts "The winner is " + winner_desc[0]
    else # if there's more than one winner, it's a tie,
      puts "The game is tied between " + pretty_list(winner_desc.reverse)
    end
    loser_desc = []
    losers.each do |loser| # For each loser
      loser_desc.push(player_string(loser)) # Add an English description of the loser
                                            # And his card
    end
    puts "The losing players were " + pretty_list(loser_desc.reverse)
  end
end

play_game()
