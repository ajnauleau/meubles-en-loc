class Meuble < ApplicationRecord
  CATEGORIES = ["Bathroom", "Bedroom", "Kitchen", "Living Room", "Kids"]
  belongs_to :user
  has_many :locations
  has_one_attached :photo
  validates :category, inclusion: { in: CATEGORIES }
  validates :description, presence:true
  validates :height, presence:true
  validates :width, presence:true
  validates :length, presence:true
  validates :daily_rate, presence:true
  def info
    "#{self.height}"
  end
end
