class User < ApplicationRecord
  has_one :party_animal
  validates :first_name, :email, :password, presence: true
  validates :email, uniqueness: true
end
