# Use these two arrays to generate a deck of cards.
ranks = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K" ]
suits = [ "hearts", "spades", "clubs", "diamonds" ]

players = []
deck = []
game = []
input = nil
play = true
counter = 0
max_val = 0
max_name = nil
max_suit = nil

for rank in ranks
  for suit in suits
    temp_arr = []
    temp_arr[0] = rank
    temp_arr[1] = suit
    deck.push(temp_arr)
  end
end

n = 5
l = deck.length
i = 0
j = 0

for i in 0..5
  for j in 0..l
    r = Random.rand(0..l)
    tmp = deck[j]
    deck[j] = deck[r];
    deck[r] = tmp;
  end
end

while (play) do
  if counter == 0
    puts "Enter player name or 'play'"
  else
    puts "#{counter} so far. Enter a player's name or type 'play':"
  end
  input = gets.chomp
  if input.eql? "play"
    play = false
  else
    counter += 1
    players.push(input)
  end
end

players.each do |player|
  #puts "--#{player}"
  temp_arr = []
  game.push[0] = player
  temp_card = deck.pop()
  #puts "--#{temp_card[0]}"
  #puts "--#{temp_card[1]}"
  game.push[1] = temp_card

  case temp_card[0]
  when "A"
    temp_val = 11
  when "J"
    temp_val = 10
  when "Q"
    temp_val = 10
  when "K"
    temp_val = 10
  else
    temp_val = temp_card[0]
  end
  #puts "--temp_val #{temp_val}"
  if (temp_val >= max_val)
    max_val = temp_val
    max_suit = temp_card[1]
    max_name = player
  end
end

puts "The winner is #{max_name} with a score of #{max_val}"
