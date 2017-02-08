# Use these two arrays to generate a deck of cards.
ranks = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K" ]
suits = [ "hearts", "spades", "clubs", "diamonds" ]

players = []

ranks.product(suits).each_with_index do |deck|
  puts deck = ranks.product(suits).shuffle
end


loop do
  puts "#{players.length} players are currently playing.  Please type player name or type p to begin"
  player = gets.chomp
  if player != "p"
    players << {name:player}
  end
break if player == "p"
end














# original code
# while true
#   puts "What is player ones name?"
#   p1_name = gets.chomp
#   players << p1_name
#   puts "Welcome!  What is player twos name?"
#   p2_name = gets.chomp
#   players << p2_name
#
#
# end
