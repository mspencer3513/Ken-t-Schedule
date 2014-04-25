json.array!(@buildings) do |building|
  json.extract! building, :id, :name, :address, :curatorfk, :gps_long, :gps_lat, :campusfk
  json.url building_url(building, format: :json)
end
