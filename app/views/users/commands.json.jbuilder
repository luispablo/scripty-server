json.array!(@commands) do |cmd|
  json.extract! cmd, :id, :server_id, :description, :command
end
