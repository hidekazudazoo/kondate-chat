class Calender < ApplicationRecord
  belongs_to :user

  validates :menu, presence: true
  validates :date, presence: true

  def start_time
    self.date
  end
end
