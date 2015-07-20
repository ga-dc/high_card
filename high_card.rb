ranks = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K" ]
suits = [ "hearts", "spades", "clubs", "diamonds" ]
puts "ranks array " + ranks.to_s
puts "suits array " + suits.to_s

players = []
deck = []
n = 0
user_input = ""
deal = []
winners = []

#builds deck os cards; matches each elemnt of ranks array with each elemnt in suits array
ranks.each do |rank|
    suits.each do |suit|
        deck.push([rank, suit])
    end
end

#prints built deck array for inspection
puts "deck of cards array " + deck.inspect

#shuffles deck, and saves it to deck
deck.shuffle!

#prints shuffled deck for inspection
puts "shuffled deck of cards array " + deck.inspect

#checks for user input of players
while (user_input != "play")
    puts n.to_s + " players so far. Enter a player name, or           type 'play':"
    user_input = gets.chomp
    players.push(user_input)
    n += 1
end

#pop off 'play' string from players array
players.pop

puts players.inspect
puts "Total of " + (n-1).to_s + " players."

#deal cards into deal array according to number of players
#also pops dealt cards off of deck array so no re-deals
(n-1).times do
    deal.push(deck.pop)
end

#prints deal array for inspection
puts "deal array is " + deal.inspect

#cycles through deal array, prioritizing winners
for i in (0..(deal.length-1))
    if (deal[i][0]) == "A"
        winners.push(players[i])
    end
end
for i in (0..(deal.length-1))
    if deal[i][0] == "K"
        winners.push(players[i])
    end
end
for i in (0..(deal.length-1))
    if deal[i][0] == "Q"
        winners.push(players[i])
    end
end
for i in (0..(deal.length-1))
    if deal[i][0] == "J"
        winners.push(players[i])
    end
end
for i in (0..(deal.length-1))
    if deal[i][0] == 10
        winners.push(players[i])
    end
end
for i in (0..(deal.length-1))
    if deal[i][0] == 9
        winners.push(players[i])
    end
end
for i in (0..(deal.length-1))
    if deal[i][0] == 8
        winners.push(players[i])
    end
end
for i in (0..(deal.length-1))
    if deal[i][0] == 7
        winners.push(players[i])
    end
end
for i in (0..(deal.length-1))
    if deal[i][0] == 6
        winners.push(players[i])
    end
end
for i in (0..(deal.length-1))
    if deal[i][0] == 5
        winners.push(players[i])
    end
end
for i in (0..(deal.length-1))
    if deal[i][0] == 4
        winners.push(players[i])
    end
end
for i in (0..(deal.length-1))
    if deal[i][0] == 3
        winners.push(players[i])
    end
end
for i in (0..(deal.length-1))
    if deal[i][0] == 2
        winners.push(players[i])
    end
end

#prints winner array for inspection
puts "winner array is " + winners.inspect
