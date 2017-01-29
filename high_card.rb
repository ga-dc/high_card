# Use these two arrays to generate a deck of cards.
ranks = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K" ]
suits = [ "hearts", "spades", "clubs", "diamonds" ]

players = []
=begin
1. Build a deck of shuffled cards.
	* The deck should be an array of cards.
	* Each card should be a mini-array with a value and suit. Example: `[8, "hearts"]`
	* Shuffle the deck. It would look something like this...
	```ruby
	deck = [
		[8, "hearts"],
		[2, "diamonds"],
		["J", "clubs"],
		...
	]
	```

deck = []

ranks.each do |rank|
  suits.each do |suit|
    card = "#{rank} #{suit.to_s}"
    ary = Array.new
    Array.new(card)
    #deck.each_with_index do |rank, suit|
    #end
  end
end

Create a deck array
That array must contain mini-arrays
Each mini-array must have every combination of every rank and suit



deck = Array.new(52) { Array.new(2, "hi") }
#=> [[nil, nil, nil], [nil, nil, nil], [nil, nil, nil]]

print deck


ranks.combination(2).to_suit

print ranks


a = [1, 2, 3, 4]
  a.combination(2).to_a

print a

=end
deck = []
deck = ranks.product(suits)
print deck.shuffle
puts "Who is player one?"
player_one = gets.chomp.upcase
puts "Who is player two?"
player_two = gets.chomp.upcase
if player_two != ""
  puts "ready to play"
end
