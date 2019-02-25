class CreatePartyAnimals < ActiveRecord::Migration[5.2]
  def change
    create_table :party_animals do |t|
      t.string :party_name
      t.text :availability
      t.string :image
      t.string :category
      t.string :location
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
