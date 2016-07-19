##Step 1 - Make the deck =)
def deck()
    ranks = [2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K", "A"]
    suits = [ "hearts", "spades", "clubs", "diamonds" ]
    deck = []

    suits.each do |suit|
        ranks.each_with_index do |rank, index|
            deck.push([suit, rank, index])
        end
    end
    return deck.shuffle
end

##Step 2 - Get Player Names
my_deck = deck()
players = []

while true
    puts players.length.to_s + ' players have signed up to play! Enter your name to play the game! Enter play to start the game'
    player = gets.chomp
    break if player == 'play'
    players.push(player)
end

##Step 3 BREAK THAT LOOP!

my_cards = players.map {|player| my_deck.pop}

puts my_cards.inspect
winner = []
my_cards.each do |card|
    winner.push(card[2])
end
champ = winner.index(winner.max)

##THIS IS WHERE THE BONUS GOES AND I CAN"T FIGURE IT OUT!
puts players[champ] + ' is the winner with a ' + my_cards[champ].inspect
