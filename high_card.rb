# Use these two arrays to generate a deck of cards.
ranks = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K" ]
suits = [ "hearts", "spades", "clubs", "diamonds" ]


player = []
dealt = 0
total_cards = 52
cards_dealt = 0
deck = []
player_card =
i = 0
entry =
ranks = ranks * 4
ranks.map!{ |rank| [rank] }
win_counter = 1

while i < 52
  deck[i] = ranks[i].push(suits[i/13])
  i += 1
end

deck.shuffle!

puts "Welcome to High Card!"
puts "Enter as many players as you like. When all players are entered, type play"
entry = gets.chomp

while entry != 'play'
  player.push({name: "#{entry}"})
  puts "#{entry} has been added!"
  entry = gets.chomp
end

puts "Great! Let's get started with a #{player.length} player game. \n Type deal to begin"
game_on = gets.chomp

while game_on == 'deal'
if cards_dealt + player.length < 52
  while dealt < player.length
    player_card = deck[dealt][0]
    player[dealt][:card] = player_card.to_i
    puts "#{player[dealt][:name]} : #{deck[dealt][0]} of #{deck[dealt][1]}"
    dealt += 1
  end
  player.sort_by!{|value| -value[:card]}
  # player[0][:wins] = win_counter +1
  cards_dealt += dealt
  dealt = 0
  puts "#{player[0][:name]} wins this round!"
  # puts "Total Scores are :\n"
  #   player.each{|user| puts "#{user[:name]} : #{user[:wins]}\n"}
  deck.shuffle!
  puts "Type deal for another round"
  game_on = gets.chomp
else puts "Sorry, Your out of cards! Maybe I'll re-shuffle the deck for you later. \n Play again sometime"
  game_on = 'done'
end

end
