class Save < ApplicationRecord
    belongs_to :user
    validates :deck_id, presence: true
end
