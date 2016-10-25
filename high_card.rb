# Use these two arrays to generate a deck of cards.
# ranks = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K" ]
# suits = [ "hearts", "spades", "clubs", "diamonds" ]
# deck = []
# players = []

# create card deck
def create_cards ()
  ranks = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K" ]
  suits = [ "hearts", "spades", "clubs", "diamonds" ]
  deck = []

  # nested loops create mini-array in decks array
  suits.each do |suit|
    ranks.each do |rank|
      deck << [suit, rank]
    end
  end
  puts deck.shuffle
end



def create_players()
  players = []
  while (true)
    puts "#{players.length} players so far. Enter a player name, or type 'play':"
    user_input = gets.chomp
    break if user_input == "play"
    players <<  [name: user_input]
  end
  puts players
end


# how do i assign a create to a player?
#   combine a mini-array to a player in another array

create_players()
create_cards()
