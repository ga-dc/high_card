# Use these two arrays to generate a deck of cards.
ranks = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K" ]
suits = [ "hearts", "spades", "clubs", "diamonds" ]

cards = []

ranks.each do |rank|
  suits.each do |suit|
    cards.push([rank,suit])
  end
end

cards = cards.shuffle

players = []
players_cards = []

puts 'How many players are playing today?'
num_players = gets.chomp.to_i

# question - is it best practice to always pass arugments to fuctions/methods
# rather than using glabal variables (both JS and ruby)?
# didnt get it to work without passing in arguments
def play_game players,cards
  players.each_with_index do |player, index|
    player[:card] = cards[index]
    case player[:card][0]
    when "A"
      player[:card][0] = 13
    when "J"
      player[:card][0] = 11
    when "Q"
      player[:card][0] = 12
    when "K"
      player[:card][0] = 13
    else
    end
  end
  puts players

  max = players.max { |a, b| a[:card][0] <=> b[:card][0]}
  winners_array = players.find_all do |player|
    player[:card][0] == max[:card][0]
  end
  return winners_array
end

counter = 1
while(counter <= num_players) do
  puts "#{players.length} players so far. Please enter a player name, or type 'play' to start playing"
  name = gets.chomp
  if name == 'play'
    break
  else
    players.push({name: name})
  end
  counter += 1
end

cards = cards.shuffle
winners = play_game players,cards
if winners.length > 1
  winners_names = []
  winners.each {|winner| winners_names.push(winner[:name])}
  puts "its a tie between #{winners_names.join(",")}"
else
  puts "#{winners[0][:name]} Wins!!!"
end
