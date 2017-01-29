# Use these two arrays to generate a deck of cards.
ranks = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K" ]
suits = [ "hearts", "spades", "clubs", "diamonds" ]

players = []

deck = []

suits.each do |suit|
  ranks.each do |rank|
    deck.push([rank, suit])
  end
end
puts deck.inspect

shuffle_deck = deck.shuffle

# puts "{n} players so far. Enter a player name, or type 'play':"
# player1 = gets.chomp.to_s
# puts "{n} players so far. Enter a player name, or type 'play':"
# player2 = gets.chomp.to_s
# puts "Okay, type 'play' to get started"
# play = gets.chomp.to_s
# if play = 'play' do
player1 = " "
player2 = " "

cards = [player1, player2]

2.times do
  cards.map do |player1, player2|
  deck.pop
  puts cards
  end
end
