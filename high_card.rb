# Use these two arrays to generate a deck of cards.
ranks = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K" ]
suits = [ "hearts", "spades", "clubs", "diamonds" ]

players = []

def buildDeck(ranks, suits)
  deck = []

  # For each rank in ranks
  ranks.each do |rank|
    # For each suit in suits
    suits.each do |suit|

      # Create a card as an array
      card = []
      card.push rank
      card.push suit

      # Push the new card into the deck
      deck.push(card)
    end
  end

  return deck
end

def getPlayers()
  players = []

  # Get the user input
  input = "none"
  while input.downcase != "play"
    print "#{ players.length } players so far. Enter a player name, or type 'play': "
    input = gets.strip

    if input != "play"
      players.push input.capitalize
      puts players
    end


  end

  # Make the array players
  players.each_with_index do |player, index|
    newPlayer = {name: player,
                 score: 0,
                 cards: [],
                 }

    players[index] = newPlayer
  end

  return players
end



def dealAllPlayers(players, deck)
  # If there are enough cards for all players
  if deck.length >= players.length

    # For each player, add a card to their hand
    players.each_with_index { |player, index|
      players[index][:cards].push( deck.pop )
    }
  end

  return players, deck
end


def findWinner(players)
  mapping = {"A"=>14, "J"=>11, "Q"=>12, "K"=>13}

  # Get the last card for each player
  newPlayers = []
  players.each { |player|

    # The value is stored as the first element of each card. We need it from the last card
    lastValue = player[:cards].last[0]
    puts lastValue

    # If the key is in mapping, assign it its mapped value
    if mapping.has_key?(lastValue)
      puts "KEY IS IN HASH"
      puts lastValue
      lastValue = mapping[lastValue]
    end

    # Now last value should be a number
    newPlayers.push({name: player[:name], lastValue: lastValue})
  }

  # Determine which player has the highest score
  highestScore = 0;
  highestPlayer = nil

  newPlayers.each { |player|
    puts "Comparing these elements"
    puts player[:lastValue]
    puts highestScore
    if player[:lastValue] > highestScore
      highestScore = player[:lastValue]
      highestPlayer = player[:name]

    elsif player[:lastValue] == highestScore
      highestPlayer = false

    end
  }
  return highestPlayer
end

# Build teh deck
deck = buildDeck(ranks, suits)


# Shuffle the deck
deck.shuffle!

# Get the players
players = getPlayers


# Deal to players
dealAllPlayers(players, deck)

winner = findWinner(players)

if winner
  puts "The winner is #{winner}"
else
  puts "It's a tie!"
end