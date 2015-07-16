# Use these two arrays to generate a deck of cards.
ranks = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K" ]
suits = [ "hearts", "spades", "clubs", "diamonds" ]
deck = []

players = []

#create deck of cards
ranks.each do |rank|
  suits.each do |suit|
    card = [rank, suit].inspect
  end
end











#inspect changed the way the output looked in terminal. each card was returning on 2 lines and not in brackets.  same value, but diff look.  reference on line 11

# deck = ("#{rank}, #{suit}").to_a  doesn't work...
#1: take out the paren and .to_a.  replace with straight brackets
#2: the quotes on the outside are making the whole thing a string rather then each a string (like in the example)
#3: taking the quotes out comments out the {} because of the hashtag.  can delete #{} for both.
#4: don't need quotes on either of them because they are already strings in the array where they're first defined.
