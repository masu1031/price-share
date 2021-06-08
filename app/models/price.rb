class Price < ApplicationRecord
  belongs_to :card
  belongs_to :shop
  belongs_to :group

  validates :price, presence: true
end
