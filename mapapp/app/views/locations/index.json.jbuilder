json.array!(@locations) do |location|
  json.extract! location, :id, :address, :suburb, :state, :postcode, :country
  json.url location_url(location, format: :json)
end
