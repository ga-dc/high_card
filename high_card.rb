
def pretty_list(list)
  return list[0..-2].join(", ") + " & "  + list[-1]
end

def build_deck(ranks, suits)
  new_deck = []
  ranks.each do |rank|
    suits.each do |suit|
      card = { :rank => rank, :suit => suit}
      new_deck.push(card)
    end
  end
  return new_deck
end

def get_player(msg)
  puts "Enter the name of the next player."
  puts msg
  return gets.chomp!
end

def get_players()
  player_list = []
  add_more = true
  until player_list.size >= 2 and not add_more
    if player_list.size < 2
      new_name = get_player("There is a minimum of two players. Please add another.")
    else
      new_name = get_player("Enter play to stop adding players.")
    end
    new_name.downcase == "play" ? add_more = false : player_list.push(new_name)
  end
  return player_list
end

def deal(player_list, deck)
  hand = []
  player_list.each do |player|
    card = deck.pop
    if card
      hand.push({:player => player, :card => card})
    else
      abort("Ran out of cards. Cannot continue. Call it a tie and try 52 Pickup next time.")
    end
  end
  return [hand, deck]
end

def get_winners(hand)
  winners = []
  winners.push(hand.pop())
  while winners[-1][:card][:rank] == hand[-1][:card][:rank]
    winners.push(hand.pop())
    break if hand.size == 0
  end
  return winners
end

def winners_string(winners_list)
  return winners_list[0..-2].join(", ") + " & " + winners_lists[-1]
end

def pretty_list(list)
  return list[0..-2].join(", ") + " & "  + list[-1]
end

def play_game()
  # Use these two arrays to generate a deck of cards.
  ranks = [2, 3, 4, 5, 6, 7, 8, 9, 10, "Jack", "Queen", "King", "Ace" ]
#  ranks = [1,2,3,4]
  suits = [ "hearts", "spades", "clubs", "diamonds" ]
  indexed_ranks = []
  deck = build_deck(ranks,suits).shuffle!
  players = get_players()
  while (players.size != 1)
    hand, deck = deal(players, deck)
    hand = hand.sort_by{ |t| ranks.index(t[:card][:rank]) }
    winners = get_winners(hand)
    players = []
    winner_desc = []
    winners.each do |winner|
      players.push(winner[:player])
      winner_desc.push(winner[:player] + " with the " + winner[:card][:rank].to_s + " of " + winner[:card][:suit])
    end
    if (winner_desc.size == 1)
      puts "The winner is " + winner_desc[0]
    else
      puts "The game is tied between " + winner_desc[0..-2].join(", ") + " & "
    end
  end
end

play_game()
