# Use these two arrays to generate a deck of cards.
ranks = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K" ]
suits = [ "hearts", "spades", "clubs", "diamonds" ]
cardsdeck = []


ranks.each do |rank|
  suits.each do |suits|
    cardsdeck.push (ranks, suits)
  end

end


cardsdeck = playing_card_game
players = []

names = [ "chris", "Joe"]
names.each do |names|
  puts names
end

ranks.each_index {|x| print x, " -- " }
cards = Hash.new
%w("A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K").each_with_index { |item, index|
  cards[item] = index
}
