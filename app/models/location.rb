class Location < ApplicationRecord
  belongs_to :meuble
  belongs_to :user
  validates :start_date, presence:true
  validates :end_date, presence:true
end
