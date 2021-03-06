class User < ApplicationRecord

  mount_uploader :image, PhotoUploader
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_one :party_animal
  has_many :bookings
  validates :first_name, :last_name, presence: true
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
