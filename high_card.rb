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
nameA = gets.chomp
players.push(nameA)
while players.length < 2
  puts "#{players.length} players so far. Enter name of player 2."
  nameB = gets.chomp
  players.push(nameB)
  puts nameA + " & " + nameB + " declare War!!"
end

puts "Type \'play\' to begin!"
play = gets.chomp
if play == "play"
  handA = deck.pop
  handB = deck.pop
  puts nameA + handA.to_s
  puts nameB + handB.to_s
end
