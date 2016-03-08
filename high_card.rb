require 'pry'

# Use these two arrays to generate a deck of cards.
@ranks = [2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K", "A"]
@suits = [ "hearts", "spades", "clubs", "diamonds" ]

@players = []

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

#save shuffled deck to a variable
@finaldeck = make_deck



#"{n} players so far. Enter a player name, or type 'play':"

def get_players
    # num = 0
    # p "#{num} players so far. Enter a player name, or type 'play':"
    # answer = gets.chomp
    # if answer = "play" do
    #
    # else
    #     @players << answer
    #     num += 1
    # end
    while true do
        p "#{num} players so far. Enter a player name, or type 'play':"
        name = gets.chomp
        #break
    end
end

binding.pry
puts "fixes pry error"
