# Use these two arrays to generate a deck of cards.
ranks = [2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K", "A"]
suits = [ "hearts", "spades", "clubs", "diamonds" ]

players = []
cards = []

suits.each do |suit|
  ranks.each do |rank|
    cards.push([rank, suit])
  end
end

deck = cards.shuffle
num_of_players = 0
while (num_of_players < 22)
  puts 'Enter a player name. If there are not more players, enter "done".'
  input = gets.chomp
  if input == "done"
    break
  end
  players.push(input)
num_of_players += 1
end

puts "OK! Here's who's in the game: #{players}"

num_of_tries = 0
while (num_of_tries)
  num_of_tries += 1
  puts "When you are ready to play, enter 'play'."
  ready = gets.chomp
  if ready == "play"
    break
  end
  if num_of_tries > 3
    puts "If you want to quit the game, type 'exit'."
    if ready == 'exit'
      exit
    end
  end
  redo
end


  hands = []
  players.each do |player|
    random_card = deck.sample
      hands.push([player, random_card.first])
    end
    puts "Hands are as follows: #{hands}"
    hands.each do |hand|
      face = hand.last
      val_of_face = ranks.index(face)
      hand.push(val_of_face)
    end
    sorted_hands = hands.sort_by { |face_val| face_val.last}
    winner = sorted_hands.last
    winner_name = winner.first
    winner_card = winner[1]
    puts "The winner is #{winner_name}!"
    puts "The winning card was a #{winner_card}."
