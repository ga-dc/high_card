ranks = [ 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K", "A" ]
suits = [ "hearts", "spades", "clubs", "diamonds" ]

def setup_deck deck, ranks, suits
  suits.each { |suit| ranks.each_with_index { |rank,index| deck << ["#{suit}","#{rank}",index]}}
  deck.shuffle!
end

def get_players
  play, players = false, []
  while play == false do
    puts "#{players.length} players so far. Enter a player name, or type 'play':"
    input = gets.chomp
    input != 'play' ? players << {name: input} : play = true
  end
  players
end

def play players, ranks, suits
  deck = setup_deck [], ranks, suits
  players.each do |player|
    player[:card] = deck.pop
    puts "#{player[:name]} got the #{player[:card][1]} of #{player[:card][0]}."
  end
  max = players.max_by { |player| player[:card][2] }
  winners = players.select { |player| player[:card][2] == max[:card][2] }
  if winners.length == 1
    puts "The winner is #{winners[0][:name]} with the #{winners[0][:card][1]} of #{winners[0][:card][0]}.\nGame Over"
  else
    puts "There was a #{winners.length} way tie. Tied players will be dealt a new card."
    players = winners.each { |winner| winner.delete(:card) }
    play players, ranks, suits
  end
end

play get_players, ranks, suits
