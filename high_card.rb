# Use these two arrays to generate a deck of cards.
# Card Setup
ranks = [2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K", "A" ]
suits = [ "hearts", "spades", "clubs", "diamonds" ]
$deck = []

ranks.each_with_index do |num, rank|
  suits.each do |suit|
    $deck.push({
      suit: suit,
      rank: rank,
      num: num
    })
  end
end

# Get Player Names
$players = []
puts $players.length.to_s + " players so far. Enter a player name, or type 'play':"
userInput = gets.chomp

while userInput != "play" do
  $players.push([userInput])
  userInput = gets.chomp
end

# Game Play

def deal_cards
  $deck.shuffle!

  $players.each_with_index do |player, index|
    $players[index].push($deck[index])
  end

  high_score = $players.map do |player|
    player[1][:rank]
  end

  high_score = high_score.max

  winner_s = $players.find_all do |player|
    player[1][:rank] == high_score
  end

  winner_name = winner_s.map do |winner|
    winner[0]
  end

  if winner_name.length == 1 then
    puts "The winner is #{winner_name[0]}!"
  else
    puts "It's a tie between #{winner_name.join(", ")}!"
  end
end

deal_cards
