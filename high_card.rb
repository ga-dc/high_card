# Use these two arrays to generate a deck of cards.

def cards
  ranks = [ 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K", "A" ]
  suits = [ "hearts", "spades", "clubs", "diamonds" ]
  deck = []

      ranks.each_with_index do |rank, index|
        suits.each do |suit|
        deck << [rank, suit, index]

      end
    end
puts deck

end

def create_players
  players = []
  cards = []

loop do
  puts "#{players.length} so far. Enter a player name, or type 'play':"
  user_input =gets.chomp
  break if user_input == 'play'
  players << {name: user_input, card:deck.pop}
end
end

def deal cards, players
  players.each_with_index do |player, i|
    player[:card] = cards[i]
  end
end

puts "winner" 
