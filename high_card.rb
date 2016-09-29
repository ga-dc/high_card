require 'pry'

ranks = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K" ]
suits = [ "hearts", "spades", "clubs", "diamonds" ]


players = []
deck = []

suits.each do |suit|
highest.each do |highest|
    deck << {highest :highest, suit :suit}
  end
end

deck.shuffle!

loop do
  puts "#{players.length}"number of players.  Enter a player name!"
  player_name = gets.chomp
  if player_name != 'play'
    players << {name: player_name}
  end
end

players.each do |player|
  someCard = deck[rand(deck.length)]
  player[:card] = someCard
end

binding.pry
puts "done but not done..."
