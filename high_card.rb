def getPlayers 
    players, break_word = {}, 'play'
    while true
        print "#{players.size} players so far.\n" +
              "Enter a player name, or type '#{break_word}': "
        player = gets.chomp
        break if player == break_word
        # TODO: store number of wins as a value for each player
        # to be displayed at the end of each game series
        players.update(player => nil) if player != "" and not
                                         players.key?(player)
    end
    players
end

def deal players, deck
    shuffled_deck = deck.shuffle
    players.keys.map.with_index do |player, i|
        {name: player, card: shuffled_deck[i][0], suit: shuffled_deck[i][1]}
    end
end

def getWinner hands, ranks
    winning_card = hands.map {|hand| ranks[hand[:card]]}.max
    hands.select {|hand| hand if ranks[hand[:card]] == winning_card}
end

def declareWinner winner
    if winner.size > 1
        tie_message = "It's a tie between "
        hand_messages = winner.map do |hand|
            "#{hand[:name]} with a #{hand[:card]} of #{hand[:suit]}" 
        end
        puts "#{tie_message} " +
             "#{hand_messages.first(hand_messages.size-1).join(', ')}" +
             ", and #{hand_messages[-1]}"
        return false
    else
        puts "#{winner[0][:name]} wins with a " +
             "#{winner[0][:card]} of #{winner[0][:suit]}"
    end
    true
end

RANKS = {
    "A" => 1,
    2 => 2,
    3 => 3,
    4 => 4,
    5 => 5,
    6 => 6,
    7 => 7,
    8 => 8,
    9 => 9,
    10 => 10,
    "J" => 11,
    "Q" => 12,
    "K" => 13
}
SUITS = [ "hearts", "spades", "clubs", "diamonds" ]
MIN_PLAYERS, MAX_PLAYERS = 2, RANKS.size * SUITS.size

deck = []
RANKS.keys.each {|rank| SUITS.each {|suit| deck.push([rank, suit])}}

players = getPlayers
num_players = players.size
if (num_players < MIN_PLAYERS) or (num_players > MAX_PLAYERS)
    puts "There must be between #{MIN_PLAYERS} and " +
         "#{MAX_PLAYERS} players in the game"
    exit 1
end

wants_new = 'yes'
while true
    hands = deal players, deck
    winner = declareWinner getWinner hands, RANKS
    if not winner
        puts "Dealing again to break the tie..."
        next
    end
    print "Would you like to continue?\n" +
          "Enter '#{wants_new}' to play again, anything else to exit: "
    answer = gets.chomp
    break if answer != wants_new
end
