# Use these two arrays to generate a deck of cards.


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

def get_players(max)
  player_list = []
  add_more = true
  until player_list.size >= 2 and player_list.size <= max and not add_more
    if player_list.size < 2
      new_name = get_player("There is a minimum of two players. Please add another.")
    else
      new_name = get_player("Enter play to stop adding players.")
    end
    new_name.downcase == "play" ? add_more = false : player_list.push(new_name)
  end
  puts "Cannot add more than " + max.to_s + " players." if player_list.size >= max
  return player_list
end

def deal(player_list, deck)
  hand = []
  player_list.each do |player|
    card = deck.pop
    hand.push({:player => player, :card => card})
  end
  return hand
end

def get_winners(hand)
  winners = []
  winners.push(hand.pop())
  while winners[-1][:card][:rank] == hand[-1][:card][:rank]
    winners.push(hand.pop())
  end
  return winners
end

def play_game()
  ranks = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K" ]
  suits = [ "hearts", "spades", "clubs", "diamonds" ]
  indexed_ranks = []
  deck = build_deck(ranks,suits).shuffle!
  players = get_players(deck.size)
  hand = deal(players, deck)
#  ranks.each_with_index { |item, index| indexed_ranks[item] = index }
  hand = hand.sort_by{ |t| ranks.index(t[:card][:rank]) }
  winners = get_winners(hand)
  if (winners.size == 1)
    puts "The winner is " + winners[0][:player]
  else
    puts "The game is tied!"
  end
end

play_game()
