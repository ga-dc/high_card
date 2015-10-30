# Use these two arrays to generate a deck of cards.
def play_game
  ranks = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K" ]
  suits = [ "hearts", "spades", "clubs", "diamonds" ]

  deck = ranks.product(suits).shuffle

  players = ["Computer"]
  puts "#{players.length} players so far named #{players}. Enter a player name, or type 'play'."
  new_player = gets.chomp.to_s
  players.push(new_player)
  puts "Hi #{new_player}, welcome to the game. Let's give you a card."

  player_hand = []
  computer_hand = []

  #pop a card off deck for each players hand
  players.each do |player|
    card = deck.pop
    player_hand.push(card)
    computer_hand.push(card)
    puts "#{player} received a card of #{card}."
  end
end

play_game
