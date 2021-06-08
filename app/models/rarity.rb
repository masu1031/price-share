class Rarity < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: 'SR' },
    { id: 3, name: 'HR' },
    { id: 4, name: 'UR' },
    { id: 5, name: 'SA' },
    { id: 6, name: 'その他' }
  ]

  include ActiveHash::Associations
  has_many :cards

  end