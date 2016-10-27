# Use these two arrays to generate a deck of cards.
# creates deck
puts "howdy"
def create_deck
  ranks = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K" ]
  suits = [ "hearts", "spades", "clubs", "diamonds" ]
  deck = []
#uses each_with_index to push a rank and a suit (single card) to deck array
  ranks.each_with_index do |rank, i|
    suits.each do |suit|
    card = {
      score: i,
      rank: rank,
      suit: suit
      }
      deck << card
    end
  end
#shuffles deck
  return deck.shuffle
  puts "deck shuffled"
end
#sets create_deck method to variable deck
deck = create_deck
#creates empty players array
players = []

while players.length < 52
  puts "There are #{players.length} players. Enter a new name, or enter 'play'"
  name = gets.chomp

  break if name == "play"
  players.push(name)
end
# puts "The game will be played between #{players}. Let's get started."
# puts "still here"
#deal cards
  #maps each player into a new array with a card
cards = players.map do |player|
  deck.pop
end

scores = cards.map do |score|
  card[:score]
end

high = scores.max
winners = []

scores.each_with_index do |score, index|
  winners.push(players[index]) if score == winner
puts "and finally"

puts "Winner(s): #{winners.join(', ')}"
puts "the cards were #{cards}"
