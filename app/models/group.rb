class Group < ApplicationRecord
  has_many :users
  has_many :cards
  has_many :shops
  has_many :prices

  validates :name, presence: true
end
