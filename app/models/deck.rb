class Deck < ApplicationRecord
    has_many :cards
    accepts_nested_attributes_for :cards

    def cards_atributes=(cards_attributes)
        cards_attributes.each_with_index do |card_attributes, i|
            if card_attributes.front.length > 0 && card_attributes.back.length > 0
                self.cards.build(card_attributes)
            end
        end
    end

    validates :title, presence: true
end
