class Typeitem < ApplicationRecord
    has_many :items
    validates :name, presence: true, length: { maximum: 30 }
end