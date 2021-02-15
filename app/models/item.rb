class Item < ApplicationRecord
  belongs_to :user

  has_one :typeitem
  has_one :category
  has_one :unmed
  has_one :ncm

  validates :descricao, presence: true
end
