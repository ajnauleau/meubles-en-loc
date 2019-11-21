class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :meubles, dependent: :destroy
  has_many :locations, dependent: :destroy
  has_many :booked_meubles, through: :locations, source: :meuble

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable


  # def get_reservations
  #   self.meubles.map { |m| m.locations }.flatten
  # end
end
