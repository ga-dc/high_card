# Use these two arrays to generate a deck of cards.
ranks = [ 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K", "A" ]
suits = [ "hearts", "spades", "clubs", "diamonds" ]
players = []
deck = []

ranks.each_with_index do |rank, index|
suits.each do |suit|
  deck.push([rank, suit, index])
end
end
deck.shuffle!

hand = []
testhand = []
card = []

new_player = ""
until(new_player == "play") do
  puts "#{players.length} players so far. Enter a player name, or type 'play':"
  new_player = gets.chomp
  if new_player == "play"
    players.each do |player|
      # puts "#{player}"+ " played " "#{deck[players.index(player)]}"
      hand = {
        card: deck[players.index(player)],
        player: player
      }
      testhand.push(hand)
    end
    else players.push(new_player)
  end
end
puts testhand
winner = testhand.max_by { |x| x[:card][2] }
puts "the winner is #{winner[:player]}"
