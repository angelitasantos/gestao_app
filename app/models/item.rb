class Item < ApplicationRecord
  belongs_to :user
  belongs_to :category
  belongs_to :ncm
  belongs_to :typeitem
  belongs_to :unmed

  validates :descricao, presence: true, length: { maximum: 80 }
end
