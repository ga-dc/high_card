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
  if game_values.count(game_values.max) > 1
    game_values.each_index.select{|i| game_values[i] == game_values.max}
  else
    game_values.index(game_values.max)
  end
end

def find_winning_player(winning_index, players)
  if winning_index.is_a? Integer
    "#{players[winning_index]} wins!"
  else
    tie_players = []
    winning_index.each do |index|
      tie_players << players[index]
    end
    "It's a tie between #{tie_players.join(', ')}"
  end
end

def play_game
  deck = new_deck
  players = get_players(players)
  game_cards = deal_cards(players, deck)
  p players.zip(game_cards).flatten.compact
  winning_index = find_high_card(game_cards)
  p find_winning_player(winning_index, players)
end

play_game
