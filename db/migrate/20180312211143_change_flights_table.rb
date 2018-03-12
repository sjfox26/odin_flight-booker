class ChangeFlightsTable < ActiveRecord::Migration[5.1]
  def change
    remove_column :flights, :start_city
    remove_column :flights, :end_city
    add_reference :flights, :start_city, index: true
    add_reference :flights, :end_city, index: true
  end
end
