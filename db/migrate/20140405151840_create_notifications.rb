class CreateNotifications < ActiveRecord::Migration
  def change
    create_table :notifications do |t|
      t.string :dept_name
      t.string :dept_email
      t.boolean :mandatory, :default => true
      t.integer :lead_time

      t.timestamps
    end
  end
end
