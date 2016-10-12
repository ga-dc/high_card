ranks = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K" ]
suits = [ "hearts", "spades", "clubs", "diamonds" ]
deck = []
players = []
#deck.each_with_index{|value, index| puts "#{index} item is #{value}";}
#suits.each_with_index{|value, index|
#  puts "#{index} item is #{value}";}
#ranks.each_with_index{|value, index|
#  puts "#{index} item is #{value}";}

suits.each { |suit| ranks.each  { |rank|
  deck << ["#{suit}","#{rank}"]}}
puts deck

players = [{name:""},{name:""}]
#players = [{name:gets},{name:gets}]
