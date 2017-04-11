## Let's Play High-Card-Wins

Game time!

**Methods to research:**

* `each_with_index`
* `max`
* `shuffle`

**Tasks:**

1. Build a deck of shuffled cards. DONE
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
	* **NOTE**: do not hardcode the deck. Create it by performing methods on the two arrays in the starter code.

2. Collect an array of player names by prompting:
	* **"{n} players so far. Enter a player name, or type 'play':"**
	Should look like this: `[{name:'Jesse'}, {name:'Jane'}]`
3. Upon *"play"*, deal each player a card.
4. Find the highest card score dealt (Aces high).
5. Find the winning player name, then print out:
	* **"Winner(s): {name1, name2, …}!"**

### Bonus I

Print out *one* of the following outcomes:

* **"The winner is {name}!"**
* **"It's a tie between {name1, name2, …}!"**

### Bonus II

Have the game redraw cards for all players in the case of a tie.


puts "This is the cards dealt: #{card_dealt}"
value = card_dealt.first
puts value
#convert face cards to numerical values
if value == "J"
	value == 11
elsif value == "Q"
	value == 12
elsif value == "K"
	value == 13
else value == "A"
	value == 14
end
cards_dealt.push(value)
players.push(:card => value)
