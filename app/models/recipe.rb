class Recipe < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :category
  belongs_to :user
  has_many :comments, dependent: :destroy
  has_many :favorites, dependent: :destroy
  has_one_attached :image
  with_options presence: true do
    validates :title
    validates :category_id, numericality: { other_than: 0, message: "を選択してください" }
    validates :image
    validates :headline
    validates :ingredient
    validates :direction
  end
end
