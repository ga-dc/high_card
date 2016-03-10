require 'pry'

# Use these two arrays to generate a deck of cards.
@ranks = [2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K", "A"]
@suits = [ "hearts", "spades", "clubs", "diamonds" ]
# "$" makes it a global variable
$players = []

#"{n} players so far. Enter a player name, or type 'play':"

def get_players
    while true do
        num = $players.length
        p "#{num} players so far. Enter a player name, or type 'p' for 'play':"
        name = gets.chomp.downcase #this is a string
        break if name == "p"
        $players << name
    end
end

def make_deck
    #for each rank with index add a suit
    deck = []
    @ranks.each_with_index do |rank, index|
        @suits.each do |suit|
            deck << {:rank => rank, :suit => suit, :index => index}
        end
    end
    #return a shuffled deck
    return deck.shuffle!
end


#If p is deal each players a card.
def deal
    #save shuffled deck to a variable
    finaldeck = make_deck
    #look into .map maybe
    #for each player in players do this(give a card on top of deck)
    round = []
    $players.each do |player|
        card = finaldeck.pop
        card[:player] = player
        round << card
        #I want to make player a key and the card a value and then pull index out to compare it.
    end
    return round
end

#
# def declare_winner
#     current_deal = deal
#     #compare hands, get highest number
#     if current_deal[0].has_valu
#     end
# end
# def play_game
#     get_players
#     declare_winner
# end


binding.pry
puts "fixes pry error"
