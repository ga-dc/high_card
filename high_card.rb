# Use these two arrays to generate a deck of cards.
ranks = ['A', 2, 3, 4, 5, 6, 7, 8, 9, 10, 'J', 'Q', 'K']
suits = %w[hearts spades clubs diamonds]

deck_of_cards = []
players = []
cards_in_play = []
winners = []

suits.each do |suit|
  ranks.each do |rank|
    deck_of_cards.push([rank, suit])
  end
end

# loop do
#   puts "#{players.length} players so far. Enter a player name, or type 'play':"
#   name = gets.chomp
#   break if name == 'play'
#   players << name
# end
#
# players.each_index do |i|
#   shuffled_deck = deck_of_cards.shuffle
#   cards_in_play << { player: players[i], suit: shuffled_deck[i - 1][1], rank: shuffled_deck[i - 1][0] }
# end

cards_in_play = [
{:player=>"Jon", :suit=>"diamonds", :rank=>"K"},
{:player=>"Blah", :suit=>"spades", :rank=>3},
{:player=>"Wo", :suit=>"spades", :rank=>"K"},
{:player=>"Yo", :suit=>"spades", :rank=>5},
{:player=>"Bo", :suit=>"spades", :rank=>"A"},
{:player=>"Jabroni", :suit=>"diamonds", :rank=>8}]

# cards_in_play = cards_in_play.sort
# puts "The sorted current deck:\n #{cards_in_play}"

cards_in_play.each do |item|
  if item[:rank].is_a?(Integer) == false
    winners << item
    cards_in_play.delete(item)
  end
end

winners = winners.sort_by { |hsh| hsh[:rank] }
cards_in_play = cards_in_play.sort_by { |hsh| -hsh[:rank] }

puts winners
puts cards_in_play
