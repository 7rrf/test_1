json.array!(@projects) do |project|
  json.extract! project, :title, :description, :assets_attributes
  json.url project_url(project, format: :json)
end
