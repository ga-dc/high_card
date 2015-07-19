def high_card
  ranks = [2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K", "A" ]
  suits = [ "hearts", "spades", "clubs", "diamonds" ]
  deck = []
  players = []

  #create shuffled deck
  ranks.each do |rank|
    suits.each do |suit|
      deck.push [rank, suit]
    end
  end
  deck.shuffle!

  #get names of players
  begin
    puts "#{players.length} players so far. Enter a player name, or type 'play':"
    input = gets.chomp.upcase
    if input != "PLAY"
      players << { name: input, cards: [] }
    else

      #deal card to players[i]
      players.each do |player|
        player[:cards] << deck.pop
      end
      print players

      #sort players[i] in descending (pl2 <=> pl1) order according to ranks[i] position
      players.sort! do |player1, player2|
        puts "comparing #{player2[:name]} to #{player1[:name]}"
        ranks.index(player2[:cards][0][0]) <=> ranks.index(player1[:cards][0][0])
      end

      #showing winner and winners
      puts "Winner is : #{players[0][:name].to_s}"
      winner = players.map { |player| player[:name]}
      puts "Winners are: #{winner.join(", ")}"
    end
  end while (input != "PLAY")
end

high_card


#rewriting as a class
# class High_card
#   @@game_is_on = true
#
#   @@ranks = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K" ]
#   @@suits = [ "hearts", "spades", "clubs", "diamonds" ]
#
#   def create_deck
#     @@ranks.each do |rank|
#       @@suits.each do |suit|
#         @@deck.push [rank, suit]
#       end
#     end
#     p deck.shuffle! # p deck.shuffle! === puts deck.shuffle!.inspect
#   end
#
#   def show_deck
#     p @@deck
#   end
#
# end
#
# game1 = High_card.new
#
# p game1
#


# p deck.shuffle! === puts deck.shuffle!.inspect

# puts local_variables  #shows local variables of method def high_card

# players.map(&:name) ===
# p players.map { |player| player[:name] + 25.to_s } ===
# p players.map do |player|
#   player[:name] + 25.to_s
# end

# players.push( {name: input, cards: []}) ===
# players << { name: input, cards: [] }
