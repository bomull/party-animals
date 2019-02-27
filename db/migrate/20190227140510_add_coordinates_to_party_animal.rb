class AddCoordinatesToPartyAnimal < ActiveRecord::Migration[5.2]
  def change
    add_column :party_animals, :latitude, :float
    add_column :party_animals, :longitude, :float
  end
end
