
# Use these two arrays to generate a deck of cards.
ranks = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K" ]
suits = [ "hearts", "spades", "clubs", "diamonds" ]

def build_deck(ranks, suits)
  deck = []
  ranks.each_with_index do |rank, i|
    suits.each do |suit|
      card = {
        rank: rank,
        suit: suit,
        value: i
      }
      deck << card
    end
  end
  deck.shuffle
end
deck = build_deck(ranks, suits)

def choose_players
  players = []
  while true do
    puts "#{players.length} players so far.  Enter a player name, or type 'play':"
    name = gets.chomp
    if name == 'play'
      break
    end
    players << name
  end
  players
end
players = choose_players

puts "the players are #{players}"
puts "**************************"

hands = []

def make_hands(players, hands, deck)
players.each do |player|
  hand = {
    player: player,
    card: deck.pop
  }
  hands << hand
end
hands
end
hands = make_hands(players, hands, deck)

puts "the hands are #{hands}"
puts "************************"

def find_winner(hands)
  winning_hand = hands.max_by do |hand|
    hand[:card][:value]
  end
end
winning_hand = find_winner(hands)

puts "#{winning_hand[:player]} is the winner"
