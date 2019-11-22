class Location < ApplicationRecord
  belongs_to :meuble
  belongs_to :user
  validates :start_date, presence: { message: "" }
  validates :end_date, presence: { message: "" }
end
