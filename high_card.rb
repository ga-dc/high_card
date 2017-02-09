
players = []
class ScrabbleWord
  def initialize(word)
    @word = word
  end

  @word.downcase

end

def score = {

}

ranks = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K" ]
suits = [ "hearts", "spades", "clubs", "diamonds" ]

players = []

deck = []

cards =[]

ranks.each do |rank|
 suits.each do |suit|
   # @deck = deck <<
   puts deck << [rank, suit]
 end
def pushCards
  deck.each_slice(2) << cards
end
end
