class CreateFlights < ActiveRecord::Migration[5.1]
  def change
    create_table :flights do |t|
      t.string :start_city
      t.string :end_city
      t.datetime :start_time
      t.integer :flight_duration

      t.timestamps
    end
  end
end
