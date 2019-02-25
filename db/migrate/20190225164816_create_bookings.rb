class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.string :date
      t.string :description
      t.boolean :confirmed
      t.references :user, foreign_key: true
      t.references :party_animal, foreign_key: true

      t.timestamps
    end
  end
end
