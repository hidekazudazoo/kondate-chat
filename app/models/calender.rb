class Calender < ApplicationRecord
  belongs_to :user

  validates :menu, presence: true
  validates :date, presence: true
end
