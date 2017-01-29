# Use these two arrays to generate a deck of cards.
ranks = [2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K", "A"]
suits = [ "hearts", "spades", "clubs", "diamonds" ]
deck =[]
players = []


ranks.each do |index|
  suits.each do |suit|
    deck.push([index,suit])
    deck.shuffle!
  end
end

hands = {}
new_player = ''
until new_player == 'play' do
  if (new_player != 'play')
  puts players.length.to_s + " players so far. Enter a player name, or type 'play':"
new_player = gets.chomp.to_s.downcase
if (new_player == 'play')
  break
end
  players.push(new_player)
  hands[:"#{new_player}"] = deck.pop
end
end
=begin attempting to use enumerable to access each players card in the hands[player][0] slot but cannot get to work.
hands.each do |player|
    hands[:"#{player}"][0]
end
=end
