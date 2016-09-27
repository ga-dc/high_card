require 'pry'
deck, players = [], []
ranks = [ 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K", "A" ]
suits = [ "hearts", "spades", "clubs", "diamonds" ]

def setup_deck deck, ranks, suits
  suits.each { |suit| ranks.each_with_index { |rank,index| deck << ["#{suit}","#{rank}",index]}}
  deck.shuffle!
end

def get_players
  while play == false do
    puts "#{players.length} players so far. Enter a player name, or type 'play':"
    input = gets
    # check input for play
    input.chomp != 'play' ? players << {name: input.chomp} : play = true
  end
  players
end

def play players, ranks, suits
  winners = []
  deck = setup_deck [], ranks, suits
  players.each do |player|
    player[:card] = deck.pop
    puts "#{player[:name]} got the #{player[:card][1]} of #{player[:card][0]}."
  end
  winners << players.max_by { |player| player[:card][2] }
  binding.pry
  if winners.length == 1
    puts "The winner is #{winners[0][:name]} with the #{player[:card][1]} of #{player[:card][0]}."
  else
    puts "There was a #{winners.length} way tie."
    players = players.each { |player| player.delete(:card) }
    play players [], ranks, suits
  end
  puts "Game Over"
end

play get_players, ranks, suits

puts 'done'
