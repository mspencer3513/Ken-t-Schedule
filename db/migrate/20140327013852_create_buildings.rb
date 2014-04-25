class CreateBuildings < ActiveRecord::Migration
  def change
    create_table :buildings do |t|
      t.string :name
      t.string :address
      t.integer :user_id
      t.decimal :gps_long, precision: 8, scale: 5
      t.decimal :gps_lat, precision: 8, scale: 5
      t.integer :campus_id

      t.timestamps
    end
  end
end
