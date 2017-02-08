ranks = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K" ]
suits = [ "hearts", "spades", "clubs", "diamonds" ]

players = []
cards = []
index = 0
ranks.each do |num|
  suits.each do |pic|
    cards.push([num.to_s, pic])
  end
end

cards.shuffle!

def add_players(players, cards, index)
  puts "#{players.length} players so far. Enter a player name, or type 'play':"
  user_input = gets.chomp.to_s
  if user_input != "play"
    players.push({name: user_input})
    puts "current players are #{players}"
  else
    until index == players.length
      players.each do |deal|
        deal[:card] = cards.sample
        index += 1
      end
  end
  puts players
  winner = players.max_by{|max| max[:card]}
  puts "#{winner[:name]} wins!"
  # rank_cards(players)
end
end

# def rank_cards(players)
#   cards.each do |rank|
#     if rank[:card][1] == "J"
#       rank[:card][1].to_i = 11
#     elsif rank[:card][1]  == "Q"
#       rank[:card][1].to_i  = 12
#     elsif rank[:card][1]  == "K"
#       rank[:card][1].to_i  = 13
#     elsif rank[:card][1] == "A"
#       rank[:card][1].to_i  = 14
#   end
#   puts
# end
# players.each do |rank|
# jack_value = rank[:card] == "J"
# jack_value[:card] = "11"
# puts players
# end
# end
while players.length > -1
  add_players(players, cards, index)
end
