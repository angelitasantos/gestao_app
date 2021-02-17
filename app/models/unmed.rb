class Unmed < ApplicationRecord
    has_many :items
    validates :abreviacao, presence: true, length: { maximum: 5 }
    validates :descricao, presence: true, length: { maximum: 30 }
end