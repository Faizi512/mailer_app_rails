json.array!(@ctypes) do |ctype|
  json.extract! ctype, :id, :name
  json.url ctype_url(ctype, format: :json)
end
