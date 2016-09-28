#######################################################################
# rankval
# Description: Deturmine the value of the card
#     Parmeters:  Rank - String value of rank
#     Return - Number representing card value
#######################################################################
def rankval ( rank )
  if rank.is_a? Numeric
  	return rank
  	elsif rank =="J"
  	 return (11)
  	elsif rank =="Q"
  	 return (12)
  	elsif rank =="K"
  	 return (13)
  	elsif rank =="A"
  	 return (14)
  end	 #if
end  # rankval

#######################################################################
# rank_name
# Description: Return String of Rank
#     Parmeters:  rank - single char string or number representing rank
#
#     Return - string name of card
#######################################################################def print_card(c)
def rank_name(rank)
  if rank==2
  	return "Two"
  elsif rank ==3
   return ("Three")
  elsif rank ==4
   return ("Four")
  elsif rank ==5
   return ("Five")
  elsif rank ==6
   return ("Six")
  elsif rank ==7
   return ("Seven")
  elsif rank ==8
   return ("Eight")
  elsif rank == 9
   return ("Nine")
  elsif rank ==10
    return ("Ten")
  elsif rank =="J"
    return ("Jack")
  elsif rank =="Q"
   return ("Queen")
  elsif rank =="K"
   return ("King")
  elsif rank =="A"
   return ("Ace")
  end	 #if
end # rank_name


#######################################################################
# print_card
# Description: Print the card value for the Person
#     Parmeters:  Person -string Person Name
#                 Players - Array of all players in game
#     Return - None
#######################################################################
def print_card ( person, players)
  players.each do |player|
   if person == player[:player]
     print (" #{person} won with a #{rank_name(player[:rank])} of #{player[:suit]} ")
   end # if
  end # each
end # print_card


#######################################################################
# announce_winners
# Description: Print out winner(s)
#     Parmeters:  highcard - value of winning card
#                 Game - Array of all players in game
#     Return - None
#######################################################################

def announce_winners(highcard,game)

# now announce each winner that has highcard
 winners=[]
 game.each do |user|
 	if user[:cardval] == highcard
 	 winners.push(user[:player])
     end # if
 end # game each


# BONUS if more than one winner Announce this
 numwinners = winners.length > 1 ?" There is a tie between " : " There is one winner "

 print "#{numwinners}"
  idx=0
	for c in winners
		print "#{c}, "
    print_card(c,game)
    if idx > 0
      puts "," # we have more than one winner so put a comma
    end #if
	end # for c
  puts ""  # force new line
end #announce_winners


ranks = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K" ]
suits = [ "hearts", "spades", "clubs", "diamonds" ]
deck = []
players = []
# 1. Build a deck of shuffled cards.
#	* The deck should be an array of cards.
#	* Each card should be a mini-array with a value and suit.
#     Example: `[8"hearts"]`
#	* Shuffle the deck. It would look something like this...
ranks.each do |rank|
	suits.each do |suit|
		deck.push([rank,suit])
	end
end
deck.shuffle!

# Collect an array of player names by prompting:
#
#"{n} players so far. Enter a player name, or type 'play':
#   " Should look like this: [{name:'Jesse'}, {name:'Jane'}]
#

puts "Welcome to High Card"
last_user=""
until last_user.upcase=="PLAY"
	puts "#{players.length} players so far. Enter a player name or type 'play'"
	last_user = gets.chomp!
	if last_user.upcase != "PLAY"
		players.push(last_user)
	end  # if
end  #until

# weight each card based on values for high card determination


#Upon "play", deal each player a card.

game=[]
 players.each do |player|
 	card=deck.pop
    hash={player:player,rank:card[0],suit:card[1],cardval:rankval(card[0])}
    game.push(hash)
 end # each

 # now figure out which player has the max card

 playercardvals=[]
 game.each do |cardval|
 	playercardvals.push(cardval[:cardval])
 end

# get highest card value
highcard=playercardvals.max

announce_winners(highcard,game)
