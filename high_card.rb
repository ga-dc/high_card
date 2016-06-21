require "pry"

def build_deck
  ranks = [2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K", "A" ]
  suits = [ "hearts", "spades", "clubs", "diamonds" ]
  deck = []
  ranks.each_with_index do |rank, i|
    suits.each do |suit|
      deck << [rank, suit, i]
    end
  end
  return deck.shuffle
end

def player_names
  players = []
  while true
    puts "Enter player name or enter 'play' to continue"
    player = gets.chomp
      if player == "play"
        break
      end
    players << player
  end
  return players
end

def play
  deck = build_deck
  players = player_names
  hands = []
  players.each do |player|
    hand = {
      player: player, card: deck.pop
    }
    hands << hand
  end
  return hands
end

def determine_high_card
  hands = play
  hands = hands.sort_by do |hand, i|
    hand[:card][2]
  end
  winner = hands.last[:player]
  puts "#{winner} wins!"
end

determine_high_card

puts "the end"
