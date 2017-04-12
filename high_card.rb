# Use these two arrays to generate a deck of cards.
ranks = [2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K", "A" ]  #switched order b/c "A" needs to be the high card.
suits = [ "hearts", "spades", "clubs", "diamonds" ]

players = []

deck = []

#this pulls each rank of card, along with it's index in the array, and each suit, and pushes all of it into the deck array.  each card (#rank) is pushed for EACH suit, which is how you get all four suits per card.
ranks.each_with_index do |rank| #you need to include the index, because otherwise you won't know which card is "higher" than another once you get into face cards and Ace.
  suits.each do |suit|
    deck << [rank, suit]
  end
end
puts deck.shuffle
#deck is shuffled, but am unable to get it to print in array form [8, "hearts"].  does print that way in the repl.

puts "#{players.length} players so far.  Enter a player name, or type 'play':" #players.length gives that number.
while (player_input) !== 'play'
player_input = gets.chomp
      #if user types anything other than 'play', that input will be assumed to be a player name, and will therefore be pushed to the players array.
break if player_input == 'play' #once user types 'play', all inputs prior to that are logged to players array.
  players << player_input
end

cards = players.map do |player| #what this does is go through array players, and for each object player, removes one object from deck (this will represent a card being dealt)
deck.pop                        #we use map rather than each, because map will return a new array (a copy of our original array, with changes made).  this new array is called cards.
end

score = cards.sort_by do |card|
  card[:score]
end

winner = score.max

puts winner
