json.array!(@notifications) do |notification|
  json.extract! notification, :id, :dept_naem, :dept_email, :mandatory, :lead_time
  json.url notification_url(notification, format: :json)
end
