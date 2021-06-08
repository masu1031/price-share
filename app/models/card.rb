class Card < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :expansion
  belongs_to :rarity
  belongs_to :card_type
  belongs_to :attribute
  
  has_many :prices

  validates :name, presence: true
  validates :expansion_id, numericality: { other_than: 1 }
  validates :card_type_id, numericality: { other_than: 1 }
end
