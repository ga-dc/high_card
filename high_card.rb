# Use these two arrays to generate a deck of cards.
ranks = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K" ]
suits = [ "hearts", "spades", "clubs", "diamonds" ]

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


players = []
