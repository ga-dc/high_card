#got this method from stack overflow: http://stackoverflow.com/questions/6737299/create-a-human-readable-list-with-and-inserted-before-the-last-element-from-a
class Array
  def to_sentence
    sentence = self[0..-2].join(", ") + ", and " + self[-1].to_s if self.size > 1
    sentence ||= self.to_s
  end
end


# Use these two arrays to generate a deck of cards.
ranks = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K" ]
suits = [ "hearts", "spades", "clubs", "diamonds" ]

players = []

deck = ranks.product(suits).shuffle

input = ""
while input != "play" #continue prompting the user until they input "play"
  puts "#{players.length} players so far. Enter a player name, or type 'play': "
  input = gets.chomp
  input == "play" ? break : players << {name: input}
  next
end

players.each do |player| #for each player in players array
  player[:card] = deck.sample #get a random card from the deck and assign it to the player
end

max = players.max_by { |player| player[:card][0].to_i } #get the highest key and save that player in a var
winners = players.select { |player| player[:card][0] == max[:card][0] } #get all other players with same max card number

winnerNames = winners.map { |winner| winner[:name] } #make an array of just the names of the winners

puts winnerNames.length == 1 ? "The winner is #{winnerNames[0].to_s}." : "It's a tie between #{winnerNames.to_sentence}." # print winner or winners to console
