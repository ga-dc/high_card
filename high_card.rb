# Use these two arrays to generate a deck of cards.

def make_deck
  ranks = [2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K", "A" ]
  suits = [ "hearts", "spades", "clubs", "diamonds" ]

  deck = []

  ranks.each_with_index do |rank, index|
    suits.each do |suit|
      card = {
        rank: rank,
        value: index,
        suit: suit
      }
      deck.push(card)
    end
  end
  return deck
end

def play_game
  shuffled_deck = make_deck.shuffle
  players = {}
  loop do
    puts "#{players.length} players currently.  Enter your name to register as a new player.  Type play to draw cards.  Use quit or exit to quit."
    user_input = gets.chomp
    if user_input == "quit" || user_input == "exit"
      break
    elsif user_input == "deck"
      puts "New deck ready!"
      shuffled_deck = make_deck.shuffle
      next
    elsif user_input == "play" && players.length == 0
      puts "Please register at least one player!"
      next
    elsif user_input == "play"
      if players.length > shuffled_deck.length
        puts "Not enough cards! Type deck to get a new shuffled deck."
        next
      end
      players.each do |key, value|
        players[key].push(shuffled_deck.pop)
        puts "#{key}'s card is #{players[key].last[:rank]} of #{players[key].last[:suit]}"
      end
      winner = []
      winner.push(players.first[0])
      players.each do |key, value|
        if players.length == 1
          puts "Maybe you should add another player for a more interesting game!"
        elsif players[key].last[:value]>players[winner.first].last[:value]
          winner=[]
          winner.push(key)
        elsif players[key].last[:value] == players[winner.first].last[:value]
           winner.push(key)
        end
        winner = winner.uniq
      end
        if winner.length == 1
          puts "#{winner.first} won with a #{players[winner.first].last[:rank]} of #{players[winner.first].last[:suit]}"
        else
          puts "Tie game! Winners are: "
          winner.each {|person| puts "#{person} - #{players[person].last[:rank]} of #{players[person].last[:suit]}"}
        end
    else
      players[user_input] = []
    end
  end
end

play_game




#
#     else
#       players[:user_input]=[]
#     end
#   end
# end
