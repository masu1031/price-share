class Price < ApplicationRecord
  belongs_to :group
  belongs_to :card
  belongs_to :shop

  validates :price, presence: true
end
