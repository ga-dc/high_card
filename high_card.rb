# Use these two arrays to generate a deck of cards.
ranks = [2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K", "A" ]
suits = [ "hearts", "spades", "clubs", "diamonds" ]

players = []

deck = []

suits.each do |suit|
  ranks.each_with_index do |rank, index|
    deck.push([rank, suit, index])
  end
end

is_running = true;

def game(deck, players)
  puts "Enter a player name, or type 'play'."
  input = gets.chomp.to_s

  if input == "play"
    play_turn(deck, players);
  elsif input == "quit"
    is_running = false;
  else
    players.push(input)
    puts "#{input} has joined the game."
  end
end


def play_turn(deck, players)
  deck = deck.shuffle
  inPlay = []
  players.each do |player|
    played_rank = deck[players.find_index(player)][0]
    played_suit = deck[players.find_index(player)][1]
    played_value = deck[players.find_index(player)][2]
    puts "#{player} played #{played_rank} of #{played_suit}!"
    inPlay.push(played_value)
  end
    winning_value = inPlay.max()
    winners = players[inPlay.find_index(winning_value)]
    #find indices that match inPlay.max
    puts "#{winners} won the hand!"

end

loop do
  is_running == true ? game(deck, players) : break
end
