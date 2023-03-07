class Recipe < ApplicationRecord
  belongs_to :category
  belongs_to :user
  has_one_attached :image
  with_options presence: true do
    validates :title
    validates :headline
    validates :ingredient
    validates :direction
  end
end
