# Use these two arrays to generate a deck of cards.
# def prep_deck

  ranks = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K" ]
  suits = [ "hearts", "spades", "clubs", "diamonds" ]
  deck = []
  
    # ranks.each do |r,v|
    #   ranks.push ({
    #     rank: r,
    #     value: v
    #   })
    # end 
  deck = ranks.product(suits)
  deck.shuffle!
# end

# $deck = prep_deck

$players = []

$player_count = 0

while $player_count < 2 
  puts "#{$player_count} players so far. Enter a player name, or type 'play':"
	answer = gets.chomp
	
	if answer != "play" 
		$players << answer
    $player_count += 1

	elsif answer == "play"
	break
	end
end

player_one = $players[0]
player_two = $players[1]
player_one_card = deck.pop
player_two_card = deck.pop

puts "#{$players[0]}'s card is #{player_one_card}"
puts "#{$players[1]}'s card is #{player_two_card}"

	if player_one_card > player_two_card
		puts "'The winner is ' + player_one!"

	elsif player_two_card > player_one_card
		puts "'The winner is ' + player_one!"

	elsif player_two_card > player_one_card
		puts "It's a tie!"
		return deal_cards
	end

