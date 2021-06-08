class Attribute < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '一撃' },
    { id: 3, name: '連撃' }
  ]

  include ActiveHash::Associations
  has_many :cards

  end