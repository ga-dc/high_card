# Use these two arrays to generate a deck of cards.
ranks = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K" ]
suits = [ "hearts", "spades", "clubs", "diamonds" ]

# create empty array for deck
deck = []

suits.each do |suit|
  thisSuit = "#{suit}"
  ranks.each_with_index do |rank, index|
    card =  ["#{rank}, #{thisSuit}"]
    deck.push(card)
  end
end

# shuffle deck
deck.shuffle
#


numberOfPlayers = 0

puts "#{numberOfPlayers} players so far. Enter a player name, or type 'play':"

  input = gets.chomp
  until input==="play"
    numberOfPlayers += 1
    puts "#{numberOfPlayers} players so far. Enter a player name, or type 'play':"
    input = gets.chomp
  end
