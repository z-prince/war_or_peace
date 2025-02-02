# deck of cards
require './lib/card.rb'

class Deck
    attr_reader :cards # :suit, :value, :rank
    #attr_accessor :suit, :value, :rank

    def initialize(cards)
        @cards = cards
    end

    def rank_of_card_at(number)
        if @cards[number].nil? #I don't know what this means but it made me add this line: `rank_of_card_at': undefined method `rank' for nil:NilClass (NoMethodError)
        0
        else
           @cards[number].rank
        end
    end

    def high_ranking_cards
        high_rank = []
        @cards.each do |card|
            if card.rank > 10
                high_rank << card
            end
        end
        return   high_rank
    end

    def percent_high_ranking
        x = high_ranking_cards.count.to_f / @cards.count.to_f
        p x.round(2) #thank you 
    end

    def remove_card
        @cards.shift
    end

    def add_card(card)
        @cards << card
    end

end

