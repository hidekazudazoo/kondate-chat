class Category < ActiveHash::Base
  self.data = [
    { id: 0, name: '-----' },
    { id: 1, name: '主食' },
    { id: 2, name: '主菜' },
    { id: 3, name: '副菜' },
    { id: 4, name: '汁物' },
    { id: 5, name: 'デザート' }
  ]

  include ActiveHash::Associations
  has_many :recipes
end
