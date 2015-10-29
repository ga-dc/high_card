# Use these two arrays to generate a deck of cards.

ranks = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K" ]
suits = [ "hearts", "spades", "clubs", "diamonds" ]
players = []
deck=[]
player_cards=[]
arena=[]
winnings=[]
ranks.each do |rank|
  suits.each do |suit|
    temp_array=[]
    temp_array.push(rank)
    temp_array.push(suit)
    deck.push(temp_array)
  end
end


def value(card, index)
  case card[index][0]
  when "A"
    14
  when "K"
    13
  when "Q"
    12
  when "J"
    11
  else
    card[index][0]
  end
end

puts deck.shuffle.inspect

puts "#{players.length} players so far. Enter a player name, or 'play':"

user_input=gets.chomp

if user_input != "play"
  players.push(user_input)
elsif user_input=="play"
  puts value(deck.shuffle,0)
end
