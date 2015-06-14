json.array!(@models) do |model|
  json.extract! model, :id, :firstname, :lastname, :height, :size, :shoesize, :haircolor, :eyes, :bust, :waist, :hips, :phonenumber
  json.url model_url(model, format: :json)
end
