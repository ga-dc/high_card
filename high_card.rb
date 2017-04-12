

def deck_cards

  values = [2, 3, 4, 5, 6, 7, 8, 9, 10, 'J', 'Q', 'K', 'A']
 suits = ['hearts', 'diamonds', 'clubs', 'spades']
 deck = []
 deck_two = []
 values.each_with_index do |val, index|
    suits.each do |s|
      deck.push({value:val,suit:s,score:index})

   end
 end
   return deck.shuffle
end
deck = deck_cards

players = []

 while true
 puts " Player #{players.length}. Enter a player name, or type 'play':"
 name = gets.chomp
break if name == "play"
 players.push(name)
end
puts "player Names are #{players.join(" and ")}"

cards = players.map do |player|
    deck.pop
end

scores = cards.map do |card|
 card[:score]

end

high_score = scores.max
puts "the high score #{high_score}"
winners = []
winners_card =[]
scores.each_with_index do |score, index|
winners.push(players[index]) if score == high_score

end
puts cards
puts "The Winner is/are: #{winners.join(' ')}"
if winners.length >=1
  puts "play again"
 deck_cards
else
  puts "bye"
end
