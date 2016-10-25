# create card deck
def create_cards ()

  ranks = [2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K","A" ]
  suits = [ "hearts", "spades", "clubs", "diamonds" ]
  deck = []

  # nested loops create mini-array in decks array
  ranks.each_with_index do |rank, index|
    suits.each do |suit|
      deck << [rank, suit, index]
    end
  end

  return deck

end


def create_players(deck)

  players = []
  cards = []

  while true
    puts "#{players.length} players so far. Enter a player name, or type 'play':"
    user_input = gets.chomp
    break if user_input == "play"
    players <<  {name: user_input, card:deck.pop}
  end
  puts players

  if (players[0][:card[2]]) > (players[1][:card[2]])
    puts "You won!"
  else
    puts "You lose!"
  end

end

deck = create_cards
create_players(deck.shuffle)

#random musing of my brain working through this problem:
# cards = players.map { |card|   }
#what is this down there
# card array = players.map and deck of cards but only want max of players.length
# # how do i assign a card to a player? {:card[0]}
# #   combine a mini-array to a player in another array
#
# create_cards()
