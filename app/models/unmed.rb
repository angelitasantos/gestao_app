class Unmed < ApplicationRecord
    has_many :items
    validates :abreviacao, :descricao, presence: true
end
