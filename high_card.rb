require "pry"

# Use these two arrays to generate a deck of cards.
ranks = [2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K","A"]
suits = ["hearts", "spades", "clubs", "diamonds"]

players = []
deck = []

# puts (prints) the ranks and suits as shuffle deck
deck = ranks.product(suits)
# shuffles deck after push() rank suits and index
# deck.shuffle!

ranks.each_with_index do |rank, amount|
  suits.each do |suit|
    deck << [rank, suits, amount]
  end
end

deck.shuffle!

loop do players # add players loop
  puts "#{players.length} Players in game"
  puts "Add player or type 'continue' "
  player = gets.chomp

  if player == 'continue'
    break
  end
  players << {name:player}

end

puts "Players in game"
puts players

def dealer(players, deck)
  players.length.times do |amount|
    players[amount].merge(card:deck[amount])
  end
end

def play_game(players) # play game
  players.sort.by!{ |player| player[:card][2]}
end

def winner(players, deck)
  champs = players.select { player[:card][2] == players.last[:card][2]}

  if champs.length > 1
    deck.shuffle!
    dealer(players, deck)
    play_game(players)
    winner(players,deck)
  else
    puts "The Champ is here!: #{players.last[:name]}"
  end
end

binding.pry
