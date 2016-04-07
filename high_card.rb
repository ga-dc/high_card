n = 0
players = []
puts "{n} players so far. Enter a player name, or type 'play':"
def get_players
  player_array = []
  while gets.chomp != 'play'
      new_player = gets.chomp
      new_player >> player_array
  end
  return player_array
end

get_players = current_players

if gets.chomp == 'play'
  current_players.each do
end


Card = Struct.new(:name, :suit,:number)
stack_of_cards = []
%w{'Spades Hearts Diamonds Clubs'}.each do |suit|
  %w{'A 2 3 4 5 6 7 8 9 10 J Q K'}.each_with_index do |name, i|
    stack_of_cards << Card.new(name, suit, i+1)
  end
end

    shuffled_deck = stack_of_cards.shuffle
next: assign card to new player
