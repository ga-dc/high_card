require "pry"

ranks = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "Jack", "Queen", "King" ]
suits = [ "hearts", "spades", "clubs", "diamonds" ]
deck = []

ranks.each_with_index do |rank, index|
  suits.each do |suit|
    deck<<({rank: rank, suit: suit, index: index})
    end
  end

  shuffled_deck = deck.shuffle
  players = []

  n = players.length
  puts "#{n} players so far. Enter player names(separated by return) and then type 'play':"

  input = gets.chomp
  while input != 'play'
    players << input
    input = gets.chomp
  end

  puts "Game has begun, #{players} are the players"

  cards = []
  hands = []
  players.length.times do |i|
    cards << shuffled_deck.shift
    hands<<{card: cards[i], player: players[i]}
  end

winner = hands.max_by{|player| player[:card][:index]}
puts winner
puts "#{winner[:player]} is the winner with the #{winner[:card][:rank]} of #{winner[:card][:suit]}!"


  binding.pry
  puts "no mas code, que valor!"
