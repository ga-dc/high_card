ranks = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K" ]
suits = [ "hearts", "spades", "clubs", "diamonds" ]
players = []
decks = []

ranks.each_with_index do |rank, index|
  suits.each do |suit|
    decks << index
    decks << rank
    decks << suit
  end
end

puts "What's your name?"
user_input = gets.chomp.to_s
player1_name = user_input.upcase!

if players.include?(player1_name)
    puts "Welcome Back!"
else
    players.push(player1_name)
    "Hello, " + player1_name + " thanks for playing!"
end

if players.length < 2
  puts "Who else is playing?"
  user_input = gets.chomp.to_s
  player2_name = user_input.upcase!
  players.push(player2_name)
end

player1_index = players.index(player1_name)
player2_index = players.index(player2_name)

player1 = players[player1_index]
player2 = players[player2_index]


decks = decks.each_slice(3).to_a
ranked_deck= decks.sort
shuffled_deck = decks.shuffle


player1_card = shuffled_deck.pop
player2_card = shuffled_deck.pop

puts player1 + " has a:" + " '#{player1_card[1]} #{player1_card[2]} ' " + player2 +
" has a: '#{player2_card[1]} #{player2_card[2]} '"

if player1_card[0] == player2_card[0]
  puts "It's a tie!"
elsif player1_card[0] > player2_card[0]
  puts player1 + " wins!"
else player1_card[0] < player2_card[0]
  puts player2 + " wins"
end
