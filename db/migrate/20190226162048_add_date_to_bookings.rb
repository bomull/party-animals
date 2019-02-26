class AddDateToBookings < ActiveRecord::Migration[5.2]
  def change
    add_column :bookings, :date, :datetime
  end
end
