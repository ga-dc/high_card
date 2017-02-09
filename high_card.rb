require "pry"
# Use these two arrays to generate a deck of cards.
def deck_creation
	ranks = [2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K", "A"]
	suits = [ "hearts", "spades", "clubs", "diamonds" ]
	deck = []
# def deck_creation
	ranks.each_with_index do |value,index|
    # calls on the specified item (i.e. ranks) and it passes through
    # each item in the enum
	  suits.each do |suit|
      deck << [{value: value, suit: suit, score: index}]
	    # deck.push([value,suit])
      # placing all the cards into a subarray with len 2 and pushing that into
      # the deck array
	  end
	end
	return deck.shuffle
  # returning a shuffled deck
end

deck = deck_creation
players = []
name = ""

while name != "play"
  puts "#{players.length} players so far. Enter a player name, or type 'play'"
  name = gets.chomp
  players << {name: name}
end
# created the names in the array

players.each_with_index do |player,index|
  player[:card] = deck[index]
end
# dealing the "hand" to the players

players.each do |change|
  if change[:card][0] == "J"
    change[:card][0] = 11
  elsif change[:card][0] == "Q"
    change[:card][0] = 12
  elsif change[:card][0] == "K"
    change[:card][0] = 13
  elsif change[:card][0] == "A"
    change[:card][0] = 14
  end
end
# reassigning the card values to the letter cards

binding.pry
