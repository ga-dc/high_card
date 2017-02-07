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
while players.length < 3
  puts "#{players.length} players so far. Enter a player name, or type 'play':"
  user_input = gets.chomp.to_s
  if user_input == "play"
    puts "play"
  elsif
    players.push({name: user_input})
    if players.length <2
    puts "please type 'play'"
    end
  end
end
