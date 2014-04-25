class Status < ActiveRecord::Base
   has_many :reservations
end
