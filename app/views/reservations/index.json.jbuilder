json.array!(@reservations) do |reservation|
  json.extract! reservation, :id, :rsv_date, :start_time, :end_time, :ksu_class, :userpk, :roompk, :statuspk, :setup_time, :teardown, :dining_svcs
  json.url reservation_url(reservation, format: :json)
end
