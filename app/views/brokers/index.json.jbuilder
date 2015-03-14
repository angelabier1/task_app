json.array!(@brokers) do |broker|
  json.extract! broker, :id, :name, :broker_email
  json.url broker_url(broker, format: :json)
end
