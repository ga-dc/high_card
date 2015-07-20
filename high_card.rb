# Use these two arrays to generate a deck of cards.
ranks = [ "2","3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K", "A" ]
suits = [ "hearts", "spades", "clubs", "diamonds" ]

#make mini-arrays for each rank and suit pair for deck array
deck = [ ]
ranks.each do |rank|
  suits.each do |suit|
    deck.push([rank,suit])
  end
end

#shuffle deck
shuffle_deck = deck.shuffle

#saving player names into players array until 'play' is typed to end loop
players = []
user_input = ""
until (user_input == "play") do
  puts players.length.to_s + " players so far. Enter a player name, or type 'play':"
  user_input = gets.chomp

  if user_input != "play"
    players.push(user_input)
  end
end

#for each player, give a card from shuffled deck and save to cards_dealt array
cards_dealt = []
players.each do |player|
  dealt_card = shuffle_deck.pop
  puts player + " got " + dealt_card[0] + " " + dealt_card[1]
  cards_dealt.push(dealt_card)
end

#determine the highest card rank using index in the ranks array of the ranks dealt
high_card = cards_dealt.max{|a, b| ranks.index(a[0]) <=> ranks.index(b[0])}
puts high_card[0] + " was the highest card score"

#looped through cards dealt to select all that matched high_card and saved indexes to winning_indexes
winning_indexes = []
cards_dealt.each_with_index { |item, index|
  if item[0] == high_card[0]
    winning_indexes.push(index)
  end
}

#select the players at each winning index and display them in the winners_string
winners_string = ""
winning_indexes.each do |winning_index|
  winners_string = winners_string + players[winning_index] + " "
end
puts "Winner(s): " + winners_string
