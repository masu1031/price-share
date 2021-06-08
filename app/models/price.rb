class Price < ApplicationRecord
  belongs_to :card
  validates :price, presence: true
end
