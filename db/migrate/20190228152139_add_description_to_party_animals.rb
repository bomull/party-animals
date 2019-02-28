class AddDescriptionToPartyAnimals < ActiveRecord::Migration[5.2]
  def change
    add_column :party_animals, :description, :text
  end
end
