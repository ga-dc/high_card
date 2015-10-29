ranks = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K", "A" ]
suits = [ "hearts", "spades", "clubs", "diamonds" ]
deck = []

suits.each do |suit|
    ranks.each do |rank|
    	deck.push([suit, rank])
	end
end

deck.shuffle!

players = []

# def get_players 
    puts "#{players.length} players so far. Enter a player name, or type 'play':"
    user_input = players.push(gets.chomp)
#     return user_input
# end

user_input = 0

until user_input == "play"
players
      puts "#{players.length} players so far. Enter a player name, or type 'play':"
    user_input = gets.chomp
    players.push(user_input)
  end 

players.pop
puts "OK, let's play."

dealt_cards = []

# (players.length).times do
#     newcard = deck.pop
#     dealt_cards.push([newcard])
# end

counter = 0
cardvals = []

# players.each do |player|
(players.length).times do
    newcard = deck.pop
    players[counter] = {
        name: players[counter],
        card: newcard
    }
    cardvalue = players[counter][:card].pop
    if cardvalue == "J"
        cardval = 11
    elsif cardvalue == "Q"
        cardval = 12
    elsif cardvalue == "K"
        cardval = 13
    elsif cardvalue == "A"
        cardval = 14
    else
        cardval = cardvalue
    end
    cardvals.push(cardval)
    counter = counter + 1
end

newcounter = 0
(players.length).times do
    if cardvals.max == cardvals[newcounter]
        winner = players[newcounter][:name]
        puts "#{winner} won!"
    else 
        puts "Cards are fun"
    end 
    newcounter = newcounter + 1
end