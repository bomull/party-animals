class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :party_animal
  validates :user_id, :party_animal_id, presence: true
  # TO DO VALIDATIONS FOR DATE IN PARTY_ANIMALS SCOPE
  # WHEN WE FIGURE OUT HOW TO IMPLEMENT DATE
end
