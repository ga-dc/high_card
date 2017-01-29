# initial arrays representing building blocks of cards
ranks = [2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K", "A" ]
suits = [ "hearts", "spades", "clubs", "diamonds" ]

# Use these two arrays to generate a deck of cards.
cards = []
ranks.each_with_index do |rank, index|
  suits.each do |suit|
    cards.push([index, rank, suit])
  end
end

# prompt for player names
players = []
entry = ""
until (entry == "play")
  puts ("#{players.length} players so far. Enter a player name, or type 'play':")
  entry = gets.chomp
  players.push (entry)
  if gets.chomp == "play"
    break
  end
end

# list players
players.pop
puts players

# shuffle cards
deck = cards.shuffle

# deal and "show" cards
activeValues = []
players.each { |player|
  drawn = deck.shift
  activeValues.push (drawn[0])
  puts "#{player} draws the #{drawn[1]} of #{drawn[2]}"
}

# determine highest card
winners = []
highCard = activeValues.max
activeValues.each_with_index { |value, index|
  if value == highCard
    winners.push (players[index])
  end
}

if winners.length == 1
  puts "The winner is #{winners}!"
else puts "It's a tie between #{winners}!"
end
