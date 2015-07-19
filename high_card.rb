
def get_ranks
  [2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K", "A" ]
end

def get_suits
  [ "hearts", "spades", "clubs", "diamonds" ]
end

def get_new_deck
  deck = []
  get_ranks.each do |rank|
    get_suits.each do |suit|
      deck.push [rank, suit]
    end
  end
  deck.shuffle
end

def get_players
  players = []

  begin
    puts "#{players.length} players so far. Enter a player name, or type 'play':"
    input = gets.chomp.upcase
    if input != "PLAY"
      players << { name: input }
    end
  end while (input != "PLAY")
  players
end

def deal_cards(players)
  begin
    deck = get_new_deck
    players.each do |player|
      player[:card] = deck.pop
    end
  end while is_tie?(players)
end

def is_tie?(players)
  players.sort! do |player1, player2|
    get_ranks.index(player2[:card][0]) <=> get_ranks.index(player1[:card][0])
  end

  tie = players.group_by { |player| player[:card][0] }.any? {|rank, players| players.length > 1}
  puts "tie was dealt... redealing..." if tie
  tie
end

def show_result(players)
  winner = players.shift
  puts "Winner is : #{winner[:name].to_s} with #{winner[:card][0]} of #{winner[:card][1]}"
  winners = players.map { |player| "#{player[:name]} with  #{player[:card][0]} of #{player[:card][1]}"}
  puts "Winners are: #{winners.join(", ")}"
end


def high_card

  players = get_players

  deal_cards(players)

  show_result(players)

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
