json.array!(@projects) do |project|
  json.extract! project, :label, :github
  json.url project_url(project, format: :json)
end
