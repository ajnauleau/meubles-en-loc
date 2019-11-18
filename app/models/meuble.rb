class Meuble < ApplicationRecord
  belongs_to :user
  has_many :locations
  has_many_attached :photos
  validates :category, presence:true
  validates :description, presence:true
  validates :height, presence:true
  validates :width, presence:true
  validates :length, presence:true
  validates :daily_rate, presence:true
end
