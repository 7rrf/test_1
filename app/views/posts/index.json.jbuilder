json.array!(@posts) do |post|
  json.extract! post, :title, :photo, :video, :content
  json.url post_url(post, format: :json)
end
