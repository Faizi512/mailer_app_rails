json.array!(@pstats) do |pstat|
  json.extract! pstat, :id, :name, :project_id
  json.url pstat_url(pstat, format: :json)
end
