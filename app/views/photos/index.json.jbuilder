json.array!(@photos) do |photo|
  json.extract! photo, :id, :photo_dir, :photo_name, :buildingpk, :roompk, :photo_order
  json.url photo_url(photo, format: :json)
end
