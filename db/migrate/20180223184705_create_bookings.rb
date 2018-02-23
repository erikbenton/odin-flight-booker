class CreateBookings < ActiveRecord::Migration[5.1]
  def change
    create_table :bookings do |t|
      t.integer :flight_id
      t.integer :number_of_passengers

      t.timestamps
    end
  end
end
