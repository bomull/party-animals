class PartyAnimal < ApplicationRecord
  belongs_to :user
  validates :party_name, uniqueness: true
  validates :party_name, presence: true
  serialize :category, Array
end
