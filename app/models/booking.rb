class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :party_animal
  validates :user_id, :party_animal_id, presence: true
  validates :date, uniqueness: true
  validates :date, presence: true
end
