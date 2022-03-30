class User < ApplicationRecord
    has_secure_password
    has_many :decks
    has_many :saves, class_name: "Save"
    validates :username, presence: true
    validates_uniqueness_of :username, case_sensitive: true
end
