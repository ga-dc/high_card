# Use these two arrays to generate a deck of cards.
ranks = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K" ]
suits = [ "hearts", "spades", "clubs", "diamonds" ]

players = []
deck = []

#make the ranks ordered with A as the highest
1.times do
  ranks << ranks[0]
  ranks.shift
end
p ranks

# makes and shuffles deck
ranks.product(suits).shuffle.each do |set|
   deck << set
end

# creates players and puts them in array as hashes
loop do
  puts "#{players.length} players so far. Enter a player name or type 'play':"
  input_name = gets.strip
  # to add hashes into players array
  player= {:name => input_name}
  # players << player
  break if input_name == "play"
  players << player
end

# deals each player a card and deletes card from deck
index =0
until index == players.length
  players.map do |player|
    player[:card] = deck.sample
    index += 1
  end
end

#converts letters into numbers
players.each do |player|
    if player[:card][0] == 'J'
      player[:card][0] = 11
    elsif player[:card][0] == 'Q'
      player[:card][0] = 12
    elsif player[:card][0] == 'K'
      player[:card][0] = 13
    elsif player[:card][0] == 'A'
      player[:card][0] = 14
    end
end
# finding the highest card dealt by comparing card: 1st entry/index
sorted = players.sort_by{|player| player[:card][0]}

winning_card = sorted.last[:card][0]

winners = players.select do |player|
   player[:card][0] == winning_card
 end
# puts winner's names into an array
winners_name = []

winners.each do |winner|
  winners_name << winner[:name]
end
# prints winners names
puts "Winner(s): #{winners_name.join(', ')}!"
