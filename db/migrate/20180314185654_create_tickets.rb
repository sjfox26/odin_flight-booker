class CreateTickets < ActiveRecord::Migration[5.1]
  def change
    create_table :tickets do |t|
      t.references :passenger, foreign_key: true
      t.references :booking, foreign_key: true

      t.timestamps
    end
  end
end
