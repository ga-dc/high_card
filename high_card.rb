ranks = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K" ]
suits = [ "hearts", "spades", "clubs", "diamonds" ]

players = []
cards = []

ranks.each do |num|
  suits.each do |pic|
    cards.push([num.to_s, pic])
  end
end

cards.shuffle!
# while players.length < 3
  # puts "#{players.length} players so far. Enter a player name, or type 'play':"
  # user_input = gets.chomp.to_s
#   if user_input == "play"
#     puts "play"
#   elsif
#     players.push({name: user_input})
#   end
# # end
# def play(players, cards)
#    players.each do |play|
#     cards.shuffle!
#     cards.each do |deal|
#         play[:card] = cards.pop
#   end
#  end
# end
def add_players(players, cards)
  puts "#{players.length} players so far. Enter a player name, or type 'play':"
  user_input = gets.chomp.to_s
  if user_input != "play"
    players.push({name: user_input})
    puts "current players are #{players}"
  else
    players.each do |play|
      cards.each do |deal|
        play[:dealt] = deal
      end
    end
 #    players.each do |play|
 #     cards.shuffle!
 #     cards.each do |deal|
 #         play[:card] = cards.pop
 #   end
 #  end
 # end
  plays()
  end
end




while players.length < 10
  add_players(players, cards)
end
  
