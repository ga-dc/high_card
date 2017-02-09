# Use these two arrays to generate a deck of cards.
ranks = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K" ]
suits = [ "hearts", "spades", "clubs", "diamonds" ]
deck = ranks.product(suits)
deck.shuffle!

# Get players.  First player outside of while loop to prevent initializing game without players.
players = []
i = 0
puts "Welcome to High Card!  Please enter a player name: "
players << {name: gets.chomp.to_s, card: ''}
while i == 0
  puts "Please enter the name of the next player, or press enter to start the game: "
  name_input = gets.chomp.to_s
  if name_input == ''
    i += 1
  else
    players << {name: name_input, card: ''}
    if players.length == 52
      puts "You are up to 52 players and can't add anymore."
      i += 1
    end
  end
end
# Deal cards and convert A, J, Q, K to integers, store card values to determine high card
i = 0
while i == 0
  x = 0
  card_values = []
  high_card = 0
  for player in players
    player[:card] = deck[x]
    if player[:card][0] == 'A'
      player[:card][0] = 14
    elsif player[:card][0] == 'J'
      player[:card][0] = 11
    elsif player[:card][0] == 'Q'
      player[:card][0] = 12
    elsif player[:card][0] == 'K'
      player[:card][0] = 13
    end
    card_values << player[:card][0]
    x += 1
  end
  # Finds highest card value, iterate against card values and push associated winner(s) into winner array
  high_card = card_values.max {|a,b| a <=> b }
  winners = []
  for player in players
    if player[:card][0] == high_card
      winners.push(player[:name])
    end
  end

  # Bonus I and II: If statement for outcomes and redraw/reshuffle
  if winners.length == 1
    puts "The winner is #{winners}!"
    i += 1
  else
    puts "It's a tie between #{winners}!  Ties are lame, let's redraw!"
    deck.shuffle!
end
