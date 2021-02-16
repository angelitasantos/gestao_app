class Ncm < ApplicationRecord
  belongs_to :user
  has_many :items
  validates :codigo, presence: true, length: { maximum: 15 }
end
