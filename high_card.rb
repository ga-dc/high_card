ranks = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K" ]
suits = [ "hearts", "spades", "clubs", "diamonds" ]

deck = ranks.product(suits)

$shuffled_deck = deck.shuffle

$players = []

def play_game
  players_cards = []
  index = 0
  while index < $players.length
    $players[index][:card] = $shuffled_deck[index]
    players_cards << $players[index][:card][0]
    index += 1
  end
  while index < players_cards.length
    if players_cards[index] == "A"
      players_cards[index] = 14
    elsif players_cards[index] == "K"
      players_cards[index] = 13
    elsif players_cards[index] == "Q"
      players_cards[index] = 12
    elsif players_cards[index] == "J"
      players_cards[index] = 11
    end
    puts players_cards
  end
    max_card = players_cards.max
    mc_index = players_cards.index(max_card)
    puts "#{$players[mc_index][:name]} wins!"
end

def play?
  prompt = "#{$players.length} players so far. Enter a player name or type 'play':"
  puts prompt
  user_input = gets.chomp
  if $players.length >= 2 && user_input == "play"
    play_game
  else $players << {:name => user_input}
    play?
  end
end

play?
