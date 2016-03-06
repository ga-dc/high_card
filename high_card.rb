# Use these two arrays to generate a deck of cards.
ranks = [2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K", "A" ]
suits = [ "hearts", "spades", "clubs", "diamonds" ]
players = []
player_cards = []

#build a deck of cards, each card is a mini-array with value and suit
  #declare a deck variable with an empty array
deck = []
  #loop through the ranks and suits arrays and build the deck array
ranks.each_with_index do |rank, i|
    #for each element in ranks array, build a card array
    #loop thru suits array and add ranks for each suit
    #I'm using i to add an additional marker to each card, signifying a value to be compared against other cards later in order to find the winner.
  for suit in suits
    card = []
    #make A of spades highest ranked card
    if rank == 'A' && suit == 'spades'
      i = 13
    end
    card.push(rank, suit, i)
    deck << card
  end
end

#shuffle the deck
deck.shuffle!

#collect an array of names by prompting for a name
def get_player arr
  user_input = ''
  while user_input != 'play'
    puts "you have #{arr.length} players so far.\nenter a player name or type 'play'"
    user_input = gets.chomp
    if user_input != 'play'
      arr << user_input
    end
  end
end
get_player(players)

#deal each player a card
def deal players, player_cards, deck
  #build an array of player cards
    #pop off a number of cards from deck equal to amount of players and put them into array of player cards
    players.each_with_index do |player, i|
      player_cards << deck.pop
      #for each card in player_cards, add player name
      player_cards[i].push(player)
    end
end
deal(players, player_cards, deck)

#find the highest card dealt
def find_highest player_cards
  high_card = player_cards.max do |a, b|
    if a[2] == b[2]
      puts "tie between #{a[3]} (#{a}) and #{b[3]} (#{b})"
      return false
      #returning false will let the show_winner function to do nothing
    else
      a[2] <=> b[2]
    end
  end
end

def show_winner winner
  if winner != false
    puts "the winner is #{winner[3]} with the #{winner[0]} of #{winner[1]}!!!!"
  end
end
show_winner(find_highest(player_cards))

puts deck
