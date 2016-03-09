def new_deck
  ranks = [2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K", "A" ]
  suits = [ "hearts", "spades", "clubs", "diamonds" ]
  deck = []
  suits.each do |suit|
    ranks.each_with_index do |rank, value|
      deck << [rank, value + 2, suit]
    end
  end
  shuffle_deck = deck.shuffle
end

def player_prompt
  p "#{players.length} players so far. Enter a player name, or type 'play':"
  gets.chomp
end

def get_players
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

# def find_high_card (game_cards)
def find_high_card
  game_values = []
  game_cards = [["K", 13, "clubs"], ["Q", 12, "diamonds"], [6, 6, "clubs"], [5, 5, "spades"]]
  game_cards.length.times do |card|
    game_values << game_cards[card][1]
  end
  game_values.max
end
