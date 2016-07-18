##Step 1 - Make the deck =)
def deck()
    ranks = [2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K", "A"]
    suits = [ "hearts", "spades", "clubs", "diamonds" ]
    deck = []

    suits.each do |suit|
        ranks.each do |rank|
            deck.push([suit, rank])
        end
    end
    return deck.shuffle.inspect
end

##Step 2 - Get Player Names
my_deck = deck()
puts my_deck
players = []
play = true

def play_game
    cards = players.each {|player| my_deck.pop}
    puts cards
end

while true
    puts players.length.to_s + ' players have signed up to play! Enter your name to play the game! Enter play to start the game'
    player = gets.chomp
    break if player == 'play'
    players.push(player)
end

puts'We gonna play now boys'
