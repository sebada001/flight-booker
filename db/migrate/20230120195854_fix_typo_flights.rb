class FixTypoFlights < ActiveRecord::Migration[7.0]
  def change
    drop_table :flights
    create_table :flights do |t|
      t.datetime :start_date
      t.integer :departure_airport_id
      t.integer :arrival_airport_id
      t.decimal :duration

      t.timestamps
    end
  end
end
