json.array!(@servers) do |server|
  json.extract! server, :id, :user_id, :description, :address, :port, :username, :password
  json.url server_url(server, format: :json)
end
