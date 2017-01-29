# Use these two arrays to generate a deck of cards.
ranks = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K" ]
suits = [ "hearts", "spades", "clubs", "diamonds" ]
deck = []
players = []
hand = []
game = 1

  ranks.each do |rank|
      suits.each do |suit|
        deck.push rank.to_s + suit
      end
    end

until game == 2

deck = deck.shuffle

  puts players.length.to_s + " players so far. Enter a player name, or type 'play':"
  name = gets.chomp.to_s



  if name == 'play'
                                            #GAME STARTS
    hand = players.map do |player|
      deck.pop
      end



    game += 1
  end


  players.push(name)


end
