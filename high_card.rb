# Use these two arrays to generate a deck of cards.
def cards_in_deck
    ranks = [2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K", "A" ]
    suits = [ "hearts", "spades", "clubs", "diamonds" ]
    deck = []

    ranks.each_with_index do |rank, index| # rank is item in array, index is value of item | attaching a index=>value to each item in first array, as it pairs with bottom array
      suits.each do |suit| # attches a each item in its array to items in first array
        deck.push({  # creating mini-objects w/ the key's and values below
          score: index, # will be how we compare the two cards
          value: rank,
          suit: suit
          })

      end
    end

    return deck.shuffle # will mix up the deck
end

# creating a variable to hold the return value of cards_in_deck
  deck = cards_in_deck


  players = []

  while true # sets it to true to just start the loop?  couldn't you just use loop???
    puts "#{players.length} so far. Enter a player name, or type 'play':"
    name = gets.chomp # getter, chomp cuts off extra whitespace

    break if name == "play" # this only breaks loop if name == 'play', gets skipped over if not true
    players.push(name) # push names into players array
  end


  #  Map players into cards
  #  map returns a new array, to the new variable cards.
  # for each item in players array, deck.pop gives out last item in deck array
  # assigning each player a card of different value, since deck.shuffle happened above
  cards = players.map do |player|
    deck.pop
  end


  #  Find highest score
  # with each player now assigned a card, of different value, we make a new array containing a new variable card
  # new var card uses [:score] as a getter to attach a value to itself from when we gave the rank an index value
  # so now each card in the new array scores has a value to compare
  scores = cards.map do |card|
    card[:score]
  end

# new variable high_score simply uses max method to return highest value from scores array

  high_score = scores.max


  #  Select winners

  # new var winners
  winners = []

  # Adds an index to items in scores array.  Tests if score = high_score, if it does, puts player in that same index spot into winners array
  # does this only work b/c none of the arrays have not been shifted around, i.e. shuffled?

  scores.each_with_index do |score, index|
    winners.push(players[index]) if score == high_score
  end

  puts "Winner(s): #{winners.join(', ')}"
  puts cards
  puts players
  puts scores
