# create card deck
def create_cards ()
  ranks = [2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K","A" ]
  suits = [ "hearts", "spades", "clubs", "diamonds" ]
  deck = []

  ranks.each_with_index do |rank, index|
    suits.each do |suit|
      deck << [rank, suit, index]
    end
  end

  return deck

end


def create_players(deck)
  players = []
  cards = []

  while true
    puts "#{players.length} players so far. Enter a player name, or type 'play':"
    user_input = gets.chomp
    break if user_input == "play"
    players <<  {name: user_input, card:deck.pop}
  end

  puts "Cards in play: "
  puts players

  winner = players.max_by {|player| player[:card][2]}
  puts "Winner(s): #{winner}!"

end

deck = create_cards

create_players(deck.shuffle)
