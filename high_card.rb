# Use these two arrays to generate a deck of cards.
ranks = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K" ]
suits = [ "hearts", "spades", "clubs", "diamonds" ]
players = []
decks = []

ranks.each_with_index do |rank, index|
  suits.each do |suit|
    decks.push(rank, suit, index)
  end
end
decks.each do |deck|
  puts deck
end



puts "{n} players so far. Enter a player name, or type 'play':"
user_input = gets.chomp.to_i
playername = user_input
players.push(playername)
puts players

play = decks.shuffle
