ranks = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K" ]
suits = [ "hearts", "spades", "clubs", "diamonds" ]

deck = []
card = []
players = []


ranks.each do |rank|
  suits.each do |suit|

    card = ["#{rank} #{suit}"]
    deck.push(card)
    deck = deck.shuffle
  end
end

puts "#{players.length} players so far. Enter name of player 1."
name1 = gets.chomp
players.push(name1)
while players.length < 2
  puts "#{players.length} players so far. Enter name of player 2."
  name2 = gets.chomp
  players.push(name2)
  puts name1 + " & " + name2 + " declare War!!"
end

puts "Type \'play\' to begin!"
play = gets.chomp

if play == "play"
  handA = deck.pop
  handB = deck.pop
  puts handA
  puts handB
end
