class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :nickname, presence: true
  has_many :recipes
  has_many :comments, dependent: :destroy
  has_many :favorites, dependent: :destroy
  has_many :calenders, dependent: :destroy

  def favorite_find(recipe_id)
    favorites.where(recipe_id: recipe_id).exists?
  end
end
