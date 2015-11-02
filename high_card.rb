require 'pry'

ranks = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K" ]
suits = [ "hearts", "spades", "clubs", "diamonds" ]

deck = []
players = []
dealt_cards = []

ranks.each do |rank|
  suits.each do |suit|
    deck.push([rank, suit])
  end
end

deck.shuffle()

puts "#{players.length} players so far. Enter a player name, or type 'play': "

if players.length < 2
  puts "Need at least two players to play"
  player1 = gets.chomp
  player2 = gets.chomp
  players.push([player1], [player2])
end


# player1_deck = deck.slice(0..26)
# player2_deck = deck.slice(26..52)

dealt_cards = deck.shift + deck.shift



def battle(dealt_cards)



    player1_hand = dealt_cards[0]
    player2_hand = dealt_cards[2]



    if player1_hand[0] > player2_hand[2]
      puts "Player 1 won the match by using #{player_1hand[0]} of #{player_1hand[1]}"
    else
      puts "Player 2 won the match! by using #{player2_hand[2]} of #{player2_hand[3]}"
    end

end

binding.pry
puts 'bg'
