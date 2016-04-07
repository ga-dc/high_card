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
# num_of_player = 0
# n = players.length

def start

  puts "#{players.length} players so far. Enter a player name, or type 'play':"
  user_input = gets.chomp
    break if user_input == 'play'
    # num_of_player = num_of_player + 1
    # players << 'player(num_of_player)'
  players << user_input
  # end

end
