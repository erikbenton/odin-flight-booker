class CreateFlights < ActiveRecord::Migration[5.1]
  def change
    create_table :flights do |t|
      t.integer  :starting_airport_id
      t.integer  :finishing_airport_id
      t.datetime :departure_time
      t.datetime :arrival_time

      t.timestamps
    end
  end
end
