require "pry"
# Use these two arrays to generate a deck of cards.
ranks = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K" ]
suits = [ "hearts", "spades", "clubs", "diamonds" ]

@players = []
@user_inputs = []
@deck = []



until @user_inputs == "play"
  puts "Please enter player name or type 'p' to play:"
  @user_inputs = gets.chomp.to_s
  @players.push(@user_inputs)
  puts"#{@players}"
end
@players.pop
puts"#{@players}"


binding.pry
