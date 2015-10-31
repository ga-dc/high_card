# Use these two arrays to generate a deck of cards.
ranks = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K" ]
suits = [ "hearts", "spades", "clubs", "diamonds" ]
players = []
decks = []

ranks.each do |rank|
  suits.each do |suit|
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

decks = decks.each_slice(2).to_a
shuffled_deck = decks.shuffle

puts shuffled_deck.length

player1_card = shuffled_deck.pop
player2_card = shuffled_deck.pop

puts shuffled_deck.length

puts player1 + " has: " + "#{player1_card}, While, " + player2 +
" has: #{player2_card}"

  if player1_card.include?("A")
    player1_card[0] = 14
  elsif player1_card.include?("J")
    player1_card[0] = 11
  elsif player1_card.include?("Q")
    player1_card[0] = 12
  elsif player1_card.include?("K")
    player1_card[0] = 13
  end


  if player2_card.include?("A")
    player2_card[0] = 14
  elsif player2_card.include?("J")
    player2_card[0] = 11
  elsif player1_card.include?("Q")
    player2_card[0] = 12
  elsif player1_card.include?("K")
    player2_card[0] = 13
  end


if player1_card[0] == player2_card[0]
  puts "It's a tie!"
elsif player1_card[0] > player2_card[0]
  puts player1 + " wins!"
else player1_card[0] < player2_card[0]
  puts player2 + " wins"
end
