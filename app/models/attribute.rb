class Attribute < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '一撃' },
    { id: 3, name: '連撃' },
    { id: 4, name: 'フュージョン' }    
  ]

  include ActiveHash::Associations
  has_many :cards

  end