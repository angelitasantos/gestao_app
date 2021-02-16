class Category < ApplicationRecord
  belongs_to :user
  has_many :items
  validates :descricao, presence: true, length: { maximum: 30 }
end
