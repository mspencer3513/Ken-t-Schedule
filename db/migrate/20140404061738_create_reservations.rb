class CreateReservations < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
      t.timestamp :start_time
      t.timestamp :end_time
      t.boolean :ksu_class
      t.integer :user_id
      t.integer :room_id
      t.integer :status_id
      t.integer :setup_time
      t.integer :teardown
      t.boolean :dining_svcs
      t.integer :no_of_pp
      t.boolean :setup_reqd
      
      t.timestamps
    end
  end
end
