class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :group_org_name
      t.string :firstname
      t.string :lastname
      t.string :address
      t.string :address2
      t.string :city
      t.string :state
      t.string :zip
      t.string :contact_ph1
      t.string :contact_ph2
      t.string :email_address
      t.string :email_address2
      t.boolean :allow_reservation
      t.string :userid
      t.string :password
      t.boolean :active
      t.timestamps
    end
  end
end
