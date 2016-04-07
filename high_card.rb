# Use these two arrays to generate a deck of cards.
# ranks = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K" ]
# suits = [ "hearts", "spades", "clubs", "diamonds" ]
#
# deck = []

def build_deck
  values = [2, 3, 4, 5, 6, 7, 8, 9, 10, 'J', 'Q', 'K', 'A']
  suits = ['hearts', 'diamonds', 'clubs', 'spades']
  deck = []

  values.each_with_index do |v, i|
    suits.each do |s|
      deck.push({
        score: i,
        value: v,
        suit: s,
      })
    end
  end

  return deck.shuffle
end

deck = build_deck
players = []
num_of_player = 0
n = players.length

def start

  puts **"{n} players so far. Enter a player name, or type 'play':"**
  user_input = gets.chomp
  if user_input == 'play'
    num_of_player = num_of_player + 1
    players << 'player(num_of_player)'
  else players << user_input
  end

end
puts start()
# puts players
