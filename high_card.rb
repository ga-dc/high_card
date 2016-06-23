require "pry"


def build_deck
  deck = []
  ranks = [2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K", "A"]
  suits = [ "hearts", "spades", "clubs", "diamonds" ]
  ranks.size.times do |i|
    suits.each do |suit|
    deck << [ ranks[i], suit, i+1 ]
      # deck(ranks.with_index.to_a).map do |suit, (rank, index)|
    end
 end
 return deck.shuffle
end

def get_players
  players = []
  while true do
    puts "Enter Player's name or play to start: "
    player = gets.chomp
    if player == "play"
      break
    end
    players << player
  end
return players
end

def deal_cards(deck,players)
  hands = []
  players.each do  |player|
    hands << [deck.shift,player]
  end
  return hands
end

def print_winner (hands)
    winner = hands.each_with_index do |hand,i|
      puts ("#{hand[1]} is number #{i+1} with the #{hand[0][0]} of #{hand[0][1]}")
    end
end

def play_the_game(deck,players)
  if deck.length < players.length
    puts("Game Over Good Game!")
    puts("Would you like to play again?")
    play = gets.chomp
    if play  == "yes"
      start_the_game
    else
      puts("Nice playing with you see you next time!")
    end
  else
    hands = deal_cards(deck,players)
    hands = hands.sort { |a,b| a[0][2] <=> b[0][2]}
    hands = hands.reverse
    print_winner(hands)
    play_the_game(deck,players)
  end
end

def start_the_game
  deck = build_deck
  players = get_players
  play_the_game(deck,players)
end

start_the_game
binding.pry #runs program
puts "hello"
