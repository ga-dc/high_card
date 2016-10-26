# Use these two arrays to generate a deck of cards.
RANKS = [2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K", "A"]
SUITS = ["clubs", "diamonds", "hearts", "spades"]

players = []

deck = RANKS.product(SUITS)

def get_card_value(deck, card)
  deck.find_index(card)+1
end

def get_high_card(players)
  high_holder = nil
end

def deal_players(deck, players)
  game_deck = Array.new(deck)
  players.each { |player|
    rando = rand(game_deck.length - 1)
    player[:card] = game_deck[rando]
    game_deck.delete_at(rando)
  }
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
puts players.inspect
