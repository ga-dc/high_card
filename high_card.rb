
  ranks = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K" ]
  suits = [ "hearts", "spades", "clubs", "diamonds" ]
  deck_of_cards = []
  $player_names = []

  deck_of_cards = (ranks).product(suits)
  deck_of_cards.shuffle!

def get_names(names)
puts "{player_name.length} players so far. Enter a player name, or type play"
loop do
  user_input = gets.chomp.to_s
  break if user_input == "play"
  names << user_input
end
play()
end

def play()
  if $player_names.length >= 2
    puts "deal card"
  end
end

get_names($player_names)

  ranks.each_with_index do |rank, i|
   suits.each do |suit|
     deck_of_cards << [i, rank, suit]
     end
  end

winning_player = players.max_by do |player|
  player[:card][0]
end

puts winning_player
