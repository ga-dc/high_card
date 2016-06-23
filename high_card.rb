require "pry"

@players = []
@deck = []
@hand = []
@winner = []
@playDeck = []

#buid deck
  def buildDeck
    values  = [2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K", "A"]
    suits   = ["Clubs", "Diamonds", "Hearts", "Spades"]

#cycle through values four times, once for each suit
#the suit index value provides relative rank (higher is better)
    values.each_with_index do |v, i| ##thanks to Adrian's solution (and aah for finding it) on S.Overflow
      suits.each do |s|
        @deck = @deck.push({
          rank: i,
          value: v,
          suit: s,
        })
      end
    end
    # puts "non-shuffled deck: #{@deck}"

    return @playDeck = @deck.shuffle
    # puts "shuffled deck: #{@deck}"

  end

  def numPlayers
    loop do
      puts "#{@players.length} players so far. Enter a player name, or type 'play:'"
      playerName = gets.chomp
      @players << playerName
      puts "Number of players: #{@players.length}"

      if playerName == "play"
        break
      end
    end
  end

  def dealCards
    @players.each do |deal|
      @hand = @hand.push({
        player: deal,
        card: @playDeck.to_a.sample,
      })
    end

    @winner = @hand.to_sym.max,
      return puts "Winner(s): #{@winner.player}"
    end




# shuffle cards deck as value-suits
# shuffle cards to a play .shuffle for each.
# take both cards and check which is higher in value (or matched?)
# puts out of winner name

# ranks.each_with_index {|suits, index|
#   deck[item] = index
# }

binding.pry
puts "all done"
