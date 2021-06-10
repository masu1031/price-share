class Shop < ApplicationRecord
  belongs_to :group

  has_many :prices
  has_many :cards, through: :prices

  validates :name, presence: true
end
