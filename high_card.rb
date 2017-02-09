require 'pry'
ranks = ["A", "K", "Q", "J", 10, 9, 8, 7, 6, 5, 4, 3, 2, 1]
suits = ["spades", "hearts", "clubs", "diamonds"]

deck = ranks.product(suits)
deck.shuffle!
players = []

start = false
until start
  puts "#{players.length} players so far. Enter a player name, or type 'play':"
  input = gets.chomp
  if input == 'play'
    start = true
  else
    player = Hash.new
    player[:name] = input
    players << player
  end
end

show_your_cards = []
players.each do |x|
  x[:hand] = deck[0]
  deck.slice!(0)
  show_your_cards << x[:hand]
end

show_your_cards.sort_by! {|x| ((ranks.index x[0]) * 10) + (suits.index x[1])}
winners = []
players.each do |x|
  if x[:hand] == show_your_cards[0]
    winners << x[:name]
  end
end
puts "#{winners} win!"

binding.pry

puts 'program resumes here'
