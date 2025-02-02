require 'rspec'
require './lib/deck'
require './lib/card'
# require_relative 'test_spec.rb'
require 'pry'

describe Deck do
  describe '#initialize' do
    it 'is a deck' do
      card1 = Card.new(:diamond, 'Queen', 12)
      card2 = Card.new(:spade, '3', 3)
      card3 = Card.new(:heart, 'Ace', 14)
      cards = [card1, card2, card3]
      deck = Deck.new(cards)
      expect(deck).to be_a Deck
    end
  end
# Having trouble with this, will come back
  describe '#remove_card' do
    it 'removes a card' do
      card1 = Card.new(:diamond, 'Queen', 12)
      card2 = Card.new(:spade, '3', 3)
      card3 = Card.new(:heart, 'Ace', 14)
      cards = [card1, card2, card3]
      deck = Deck.new(cards)
      deck.remove_card
      expect(deck.cards).to eq [card2, card3]
    end
  end

  describe 'cards' do
    it "deck has cards" do
      card1 = Card.new(:diamond, 'Queen', 12)
      card2 = Card.new(:spade, '3', 3)
      card3 = Card.new(:heart, 'Ace', 14)
      cards = [card1, card2, card3]
      deck = Deck.new(cards)
      expect(deck.cards).to eq [card1, card2, card3]
    end
  end

  describe '#high_ranking_cards' do
    it 'interrogates high ranking cards into an array' do
      card1 = Card.new(:diamond, 'Queen', 12)
      card2 = Card.new(:spade, '3', 3)
      card3 = Card.new(:heart, 'Ace', 14)
      cards = [card1, card2, card3]
      deck = Deck.new(cards)
      expect(deck.high_ranking_cards).to eq [card1, card3]
    end
  end

  describe '#rank_of_card_at' do
    it 'specifies a rank of a card at an index' do
      card1 = Card.new(:diamond, 'Queen', 12)
      card2 = Card.new(:spade, '3', 3)
      card3 = Card.new(:heart, 'Ace', 14)
      card4 = Card.new(:heart, '4', 4)
      cards = [card1, card2, card3]
      deck = Deck.new(cards)
      expect(deck.rank_of_card_at(2)).to eq 14
    end
  end

  describe '#add_card' do
    it 'adds a card' do
      card1 = Card.new(:diamond, 'Queen', 12)
      card2 = Card.new(:spade, '3', 3)
      card3 = Card.new(:heart, 'Ace', 14)
      card4 = Card.new(:heart, '4', 4)
      cards = [card1, card2, card3]
      deck = Deck.new(cards)
      # pry.break
      deck.add_card(card4)
      expect(deck.cards).to eq [card1, card2, card3, card4]
    end
  end

  describe '#percentage_high_ranking' do
    it 'tells percentage of high rank cards' do
      card1 = Card.new(:diamond, 'Queen', 12)
      card2 = Card.new(:spade, '3', 3)
      card3 = Card.new(:heart, 'Ace', 14)
      card4 = Card.new(:heart, '4', 4)
      cards = [card1, card2, card3, card4]
      deck = Deck.new(cards)
      expect(deck.percent_high_ranking).to eq 0.50

    end
  end

end

