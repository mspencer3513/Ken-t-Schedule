class CreateRooms < ActiveRecord::Migration
  def change
    create_table :rooms do |t|
      t.integer :max_capacity
      t.string :floor
      t.string :room_num
      t.decimal :int_cost
      t.decimal :ext_cost
      t.boolean :ext_use_allowed
      t.integer :whiteboards
      t.integer :overhead
      t.boolean :computer_connectivity
      t.boolean :wireless_access
      t.boolean :projection_system
      t.boolean :sound_system
      t.boolean :stage
      t.integer :multi_level
      t.string :restrictions
      t.integer :buildingpk

      t.timestamps
    end
  end
end
