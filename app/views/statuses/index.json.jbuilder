json.array!(@statuses) do |status|
  json.extract! status, :id, :name, :created_on, :updated_on
  json.url status_url(status, format: :json)
end
