json.array!(@rooms) do |room|
  json.extract! room, :id, :max_capacity, :floor, :room_num, :int_cost, :ext_cost, :ext_use_allowed, :whiteboards, :overhead, :computer_connectivity, :wireless_access, :projection_system, :sound_system, :stage, :multi_level, :restrictions, :buildingpk
  json.url room_url(room, format: :json)
end
