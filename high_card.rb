# Use these two arrays to generate a deck of cards.
ranks = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K" ]
ranks.push(ranks.shift)
suits = [ "hearts", "spades", "clubs", "diamonds" ]
deck_array = []

ranks.each_with_index do |rank, i|
  suits.each do |suits|
    deck_array << [i,rank,suits]
  end
end
deck_array.shuffle!

player1 = []
player1_score = 0

do
  puts "#{player1.length} to play"
  name_input = gets.chomp
  if name_input === "play"
    break
  else
    player1 << { :name_input }
end

player1.each do |player1|

winning_card_player1 = players.max_by do |player1|
  player[:card][0]
end
