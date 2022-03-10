class User < ApplicationRecord
    has_secure_password
    has_many :decks
    has_many :saved_decks, class_name: 'Deck'
    validates :username, presence: true
    validates :password, presence: true
    validates_uniqueness_of :username, case_sensitive: true
end
