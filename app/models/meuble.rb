class Meuble < ApplicationRecord
  CATEGORIES = ["Bathroom", "Bedroom", "Kitchen", "Living Room", "Kids"]
  belongs_to :user
  has_many :locations, dependent: :destroy
  has_many_attached :photos
  validates :category, inclusion: { in: CATEGORIES }
  validates :description, presence:true
  validates :height, presence:true
  validates :width, presence:true
  validates :length, presence:true
  validates :daily_rate, presence:true

end
