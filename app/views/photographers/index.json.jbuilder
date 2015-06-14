json.array!(@photographers) do |photographer|
  json.extract! photographer, :id, :name, :email, :phonenumber
  json.url photographer_url(photographer, format: :json)
end
