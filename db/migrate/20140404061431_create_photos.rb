class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.string :photo_dir
      t.string :photo_name
      t.integer :building_id
      t.integer :room_id
      t.integer :photo_order

      t.timestamps
    end
  end
end
