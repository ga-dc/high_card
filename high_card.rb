require "pry"



# Use these two arrays to generate a deck of cards.
ranks = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K" ]
suits = [ "hearts", "spades", "clubs", "diamonds" ]

players = []
deck = ranks.product(suits)
deck.shuffle!
compare = []

  loop do
    puts " {#{players.length} players so far. Enter a player name, or type 'play' "
    newPlayer = gets.chomp
    break if newPlayer == "play"
    players << {name: newPlayer, card: deck.pop}
    # compare << players[:card]
  end

  players.each do |player|
    puts player[:card].inspect
    compare << player[:card]
  end


  ## CONTINUE NO 4 & 5






binding.pry
puts "end of file"
