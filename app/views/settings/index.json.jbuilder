json.array!(@settings) do |setting|
  json.extract! setting, :title, :description, :paragraph
  json.url setting_url(setting, format: :json)
end
