require 'pry'
# Use these two arrays to generate a deck of cards.
ranks = ['A', 2, 3, 4, 5, 6, 7, 8, 9, 10, 'J', 'Q', 'K']
suits = %w[hearts spades clubs diamonds]

deck_of_cards = []
players = []
cards_in_play = []
number_cards = []
winners = []

suits.each do |suit|
  ranks.each do |rank|
    deck_of_cards.push([rank, suit])
  end
end

loop do
  puts "#{players.length} players so far. Enter a player name, or type 'play':"
  name = gets.chomp
  break if name == 'play'
  players << name
end

players.each_index do |i|
  shuffled_deck = deck_of_cards.shuffle
  cards_in_play << { player: players[i], suit: shuffled_deck[i - 1][1], rank: shuffled_deck[i - 1][0] }
end

# Sorts the cards_in_play array, moving the rank cards with numbers their own array
cards_in_play.each do |item|
  if item[:rank].is_a?(Integer) == true
    number_cards << item
    cards_in_play.delete(item)
  end
end
# Moves both sorted arrays together
number_cards.each { |item| cards_in_play << item}

# Set ranking to numeric values
cards_in_play = cards_in_play.each do |hsh|
  if hsh[:rank] == 'J'
    hsh[:rank] = 11
  elsif hsh[:rank] == 'Q'
    hsh[:rank] = 12
  elsif hsh[:rank] == 'K'
    hsh[:rank] = 13
  elsif hsh[:rank] == 'A'
    hsh[:rank] = 14
  end
end

# sorts both arrays into descending order
cards_in_play = cards_in_play.sort_by { |hsh| -hsh[:rank] }

# Moves the highest card to the winners array
winners << cards_in_play.slice!(0)


# Move tied winner cards
cards_in_play.each do |hsh|
  winners << hsh if hsh[:rank] == winners[0][:rank]
end

winners_array = []

winners.each do |hsh|
  winners_array << hsh[:player]
end

puts "Winner(s): #{winners_array.join(', ')}!"
