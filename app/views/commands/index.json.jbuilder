json.array!(@commands) do |command|
  json.extract! command, :id, :server_id, :description, :command
  json.url command_url(command, format: :json)
end
