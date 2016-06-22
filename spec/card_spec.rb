require "rspec"
require_relative "../models/card"

describe Card do

  describe "#to_s" do
    it "returns a string that contains correct suit icon and rank" do
      card = Card.new("hearts", 13)
      expect(card.to_s).to be_a String
      expect(card.to_s).to include "\u2665".encode('utf-8')
      expect(card.to_s).to include "A"
    end
  end

  describe ".rank" do
    it "converts its worth into a string that is displayed on the card" do
      expect(Card.rank 1).to eql "2"
      expect(Card.rank 12).to eql "K"
      expect(Card.rank 13).to eql "A" # Used eql to compare for equal value.
    end
  end

  describe ".suit" do
    it "returns an array of correct suit strings" do
      expect(Card.suits).to be_a Array
      expect(Card.suits).to include("hearts")
      expect(Card.suits).to include("clubs")
      expect(Card.suits).to include("diamonds")
      expect(Card.suits).to include("spades")
    end
  end
end
