class User < ActiveRecord::Base
	validates_presence_of :firstname, :lastname, :address, :userid, :city, :zip, :contact_ph1, :email_address
	has_many :reservations
end
