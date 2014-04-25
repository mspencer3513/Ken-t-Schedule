json.array!(@users) do |user|
  json.extract! user, :id, :group_org_name, :firstname, :lastname, :address, :address2, :city, :zip, :contact_ph1, :contact_ph2, :email_address, :email_address2, :allow_reservation, :userid, :password, :active
  json.url user_url(user, format: :json)
end
