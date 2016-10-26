require "pry" #Pry doesn't work!! ah!

ranks = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K" ],
suits = [ "hearts", "spades", "clubs", "diamonds" ]

deck = []
players = []

deck.shuffle!

ranks.each_with_index do |rank, index| #aligns each with the index number
  suits.each do |suit|
    deck << [rank, suit, index] #move to deck array
  end
end

#getting player name or play!
player = "" #player unassigned
loop do player
  puts "#{players.length} Players so far. Enter another player name, or type 'play'"
  player = gets.chomp
  if player == 'play'
    break #ends this, skips to next method
  end
  players << {name:player}
end

#dealing cards once they input play


binding.pry
