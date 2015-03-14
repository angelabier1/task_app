json.array!(@agent_applications) do |agent_application|
  json.extract! agent_application, :id, :user_id, :license_number, :license_expiration
  json.url agent_application_url(agent_application, format: :json)
end
