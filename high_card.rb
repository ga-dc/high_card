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


# now announce each winner that has highcard
 winners=[]
 game.each do |user|
 	if user[:cardval] == highcard
 	 winners.push(user[:player])
     end # if
 end # game each

 numwinners=" There is one winner "

 if winners.length > 1
	 numwinners" There is a tie between "
	 verb="are"
 end
 print "#{numwinners}"
  idx=0
	for c in winners
		print "#{c} "
	end
