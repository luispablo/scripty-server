json.array!(@devices) do |device|
  json.extract! device, :id, :user_id, :key, :valid
  json.url device_url(device, format: :json)
end
