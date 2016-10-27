# Use these two arrays to generate a deck of cards.
RANKS = [2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K", "A"]
SUITS = ["clubs", "diamonds", "hearts", "spades"]

players = []

deck = RANKS.product(SUITS)

def get_card_value(deck, card)
  deck.find_index(card)+1
end

def get_scores(deck, players)
  players.each { |player|
    player[:score] =  get_card_value(deck, player[:card])
  }
  players.sort_by {|player| player[:score]}.reverse
end

def deal_players(deck, players)
  game_deck = Array.new(deck)
  players.each { |player|
    rando = rand(game_deck.length - 1)
    player[:card] = game_deck[rando]
    game_deck.delete_at(rando)
  }
end

def print_scores(player_scores)
  names = player_scores.map { |e| e[:name]  }
  puts "Winners in order:"
  names.each { |name| puts name }
end

puts "Welcome to High Card"

loop {
  puts "Enter a player name to add players or (play)"
  answer = gets.chomp().downcase
  break if answer == "play"
  player = {name: answer.capitalize}
  players << player
}

deal_players(deck, players)
scores = get_scores(deck, players)
print_scores(scores)
#puts scores.inspect to check results closely
