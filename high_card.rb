ranks = ["ace", 2, 3, 4, 5, 6, 7, 8, 9, 10, "jack", "queen", "king", "ace" ]
suits = [ "hearts", "spades", "clubs", "diamonds" ]
deck = []

# compile deck
suits.each do |suit|
    ranks.each do |rank|
    	deck.push([suit, rank])
	end
end

deck.shuffle!

players = []

# prompt user
puts "#{players.length} players so far. Enter a player name, or type 'play':"
user_input = players.push(gets.chomp)


user_input

# continue prompting til user enters play
until user_input == "play"
players
      puts "#{players.length} players so far. Enter a player name, or type 'play':"
    user_input = gets.chomp
    players.push(user_input)
  end 

# get rid of "play" as player
players.pop

puts "OK, let's play."

counter = 0
newcounter = 0
cardvals = []

// 
(players.length).times do
    newcard = deck.pop
    players[counter] = {
        name: players[counter],
        card: newcard
    }
    cardvalue = players[counter][:card][1]
    if cardvalue == "jack"
        cardval = 11
    elsif cardvalue == "queen"
        cardval = 12
    elsif cardvalue == "king"
        cardval = 13
    elsif cardvalue == "ace"
        cardval = 14
    else
        cardval = cardvalue
    end
    cardvals.push(cardval)
    counter = counter + 1
end

newcounter = 0
(players.length).times do
    puts "#{players[newcounter][:name]} played a #{players[newcounter][:card][1]} of #{players[newcounter][:card][0]}"
    if cardvals.max == cardvals[newcounter]
        winner = players[newcounter][:name]
        puts "#{winner} won!"
    else 
    end 
    newcounter = newcounter + 1
end