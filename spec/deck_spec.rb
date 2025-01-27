require './lib/card'
require './lib/deck'

RSpec.describe Deck do

  context 'Initialize' do
    it 'exists' do
      card1 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
      card2 = Card.new("The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", "Mars", :STEM)
      card3 = Card.new("Describe in words the exact direction that is 697.5° clockwise from due north?", "North north west", :STEM)

      cards = [card1, card2, card3]
      deck = Deck.new(cards)

      expect(deck).to be_instance_of(Deck)
    end

    it 'has cards' do
      card1 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
      card2 = Card.new("The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", "Mars", :STEM)
      card3 = Card.new("Describe in words the exact direction that is 697.5° clockwise from due north?", "North north west", :STEM)

      cards = [card1, card2, card3]
      deck = Deck.new(cards)

      expect(deck.cards).to eq(cards)
    end
  end

  context 'Methods' do
    it 'has a card count' do
      card1 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
      card2 = Card.new("The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", "Mars", :STEM)
      card3 = Card.new("Describe in words the exact direction that is 697.5° clockwise from due north?", "North north west", :STEM)

      cards = []
      deck = Deck.new(cards)

      expect(deck.count).to eq(0)

      cards2 = [card1, card2, card3]
      deck2 = Deck.new(cards2)

      expect(deck2.count).to eq(3)
    end

    it 'returns cards in a specific category' do
      card1 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
      card2 = Card.new("The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", "Mars", :STEM)
      card3 = Card.new("Describe in words the exact direction that is 697.5° clockwise from due north?", "North north west", :STEM)

      cards = [card1, card2, card3]
      deck = Deck.new(cards)

      expect(deck.cards_in_category(:STEM)).to eq([card2, card3])
      expect(deck.cards_in_category(:Geography)).to eq([card1])
      expect(deck.cards_in_category(:History)).to eq([])
    end
  end
end
