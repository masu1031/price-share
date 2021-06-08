class CardType < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: 'ポケモン' },
    { id: 3, name: 'トレーナーズ' },
    { id: 4, name: 'エネルギー' }
  ]

  include ActiveHash::Associations
  has_many :cards

  end