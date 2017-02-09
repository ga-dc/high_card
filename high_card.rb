# Use these two arrays to generate a deck of cards.

require "pry"

ranks = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K" ]
suits = [ "hearts", "spades", "clubs", "diamonds" ]

  player []

deck = ranks.product(suits)

  deck.shuffle!
  compare = []

  loop do
    puts " {#{players.length}Enter a player name, or type 'play':"
    player_input = gets.chomp
   break if player_input == "play"
    players << {name: player_input, card: deck.pop}

  end

  players.each do |player|
     puts player[:card].inspect
    compare << player[:card]
   end


binding.pry()
