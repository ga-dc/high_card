# Use these two arrays to generate a deck of cards.
ranks = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K" ]
suits = [ "hearts", "spades", "clubs", "diamonds" ]

players = []

deck = Array.new

# create deck from ranks and suits
ranks.each do |rank|
  suits.each do |suit|
    deck.push([rank, suit])
  end
end

# verify deck is complete
puts deck.inspect
puts deck.length

# unfinished: create array of arrays of ranks with their numeric value (Aces high)
card_value = Hash.new

# get either player names or 'play' command
def start_game(players)
  puts "#{players.length} players so far. Enter a player name, or type 'play':"
  user_input = gets.chomp
  return user_input
end

# does this call the above?
user_input = start_game(players)

# before game can begin, need at least 2 players. add user input to players array unless user says 'play'
while players.length < 2 do
  if user_input == "play"
    puts "We need two players to begin. Please enter a player name"
    players.push(gets.chomp)
  else
    players.push(gets.chomp)
  end
end

# deal a card to each player - requires assigning a card to each person in the players array
# was going to be a smaller "deal_cards" method but I realized I don't know enough about ruby methods
def play_game(players, cards)
  deal = Array.new
  # first deal a card for each player
  players.each do
    deal.push(cards.shuffle[0])
  end
  puts deal.inspect # verify cards
  # create hash of player: card pair - index of card can double as index of players array?
  player_cards = Hash.new
  deal.each_with_index.map {|card, player|
    player_cards[player] = card
  }
  puts player_cards.inspect #verify
  #{}"#{players[0]}: #{player_cards.(0)}; #{player[1]}: #{player_cards.(1)}; #{player[2]}: #{player_cards.(2)}"

# need to get array of ranks with index to be able to evaluate high card (see above, started)
  #winning_card = array_of_card_values.max
end
