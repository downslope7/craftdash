json.array!(@servers) do |server|
  json.extract! server, :id, :hostname, :username, :private_key, :public_key
  json.url server_url(server, format: :json)
end
