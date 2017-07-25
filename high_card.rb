# Use these two arrays to generate a deck of cards.
ranks = [2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K", "A"]
suits = [ "hearts", "spades", "clubs", "diamonds" ]

ranks.rotate! # make Ace the highest card
players = []
winners = []
shuffledDeck = ranks.product(suits).shuffle

# get the player names
puts "Enter a player name: "
input = gets.chomp
while input != "play"
  players << {name: input}
  puts "#{players.length} players so far. Enter a player name, or type 'play'"
  input = gets.chomp
end

puts "Drawing Cards...."

while winners.length != 1
  # Give each player a card
  players.map! { |player|
    player = {
      name: player[:name],
      card: shuffledDeck.shift
    }
  }

  # empty winners
  winners = []
  # find the winner - who has the highest rank?
  # The loop will exit as soon as someone enters
  # the winners array since we are starting from
  # the highest rank
  ranks.reverse_each { |rank|

    players.each { |player|
      if player[:card][0] == rank
        winners << player
      end
    }

    if winners.length > 0
      break
    end
  }

  # if it's a tie, redraw cards
  if winners.length != 1
    print "It's a tie between "
    winners.each_with_index { |winner, index|
      if index == winners.length - 1
        break
      end
      print "#{winner[:name]}, "
    }
    print "and #{winners[winners.length-1][:name]}"
    puts "\nRedrawing cards..."
  end #end if

end #end while

# if we made it here there is only one winner, yay!
print "The winner is #{winners[0][:name]}!"
