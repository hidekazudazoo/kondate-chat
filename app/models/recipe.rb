class Recipe < ApplicationRecord
  belongs_to :category
  belongs_to :user
  has_one_attached :image
  with_options presence: true do
    validates :title
    validates :category_id, numericality: { other_than: 0, message: "選択してください" }
    validates :headline
    validates :ingredient
    validates :derection
    validates :image
  end
end
