def new_deck
  ranks = [2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K", "A" ]
  suits = [ "hearts", "spades", "clubs", "diamonds" ]
  deck = []
  suits.each do |suit|
    ranks.each_with_index do |rank, value|
      deck << [rank, value + 2, suit]
    end
  end
  deck.shuffle
end

def get_players(players)
  players = []
  while true
    p "#{players.length} players so far. Enter a player name, or type 'p' to play:"
    name = gets.chomp
    break if name == 'p'
    players << name
  end
  players
end

def deal_cards(players, deck)
  game_cards = []
  players.length.times do
    game_cards << deck.pop
  end
  game_cards
end

def find_high_card (game_cards)
  game_values = []
  game_cards.length.times do |card|
    game_values << game_cards[card][1]
  end
  winning_value = game_values.max
  winning_index = game_values.index(winning_value)
  # return winning_value, winning_index
end

def find_winning_player(winning_index, players)
  p "#{players[winning_index]} wins!"
end

def play_game
  deck = new_deck
  players = get_players(players)
  game_cards = deal_cards(players, deck)
  winning_index = find_high_card(game_cards)
  find_winning_player(winning_index, players)
end

play_game
