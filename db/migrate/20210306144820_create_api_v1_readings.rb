class CreateApiV1Readings < ActiveRecord::Migration[5.2]
  def change
    create_table :api_v1_readings do |t|
      t.references :thermostat, foreign_key: false
      t.integer :number
      t.decimal :temperature, :default => 0.0
      t.decimal :humidity, :default => 0.0
      t.decimal :battery_charge, :default => 0.0

      t.timestamps
    end
    add_foreign_key :api_v1_readings, :api_v1_thermostats, column: :thermostat_id
  end
end
