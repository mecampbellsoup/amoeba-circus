json.array!(@acts) do |act|
  json.extract! act, :title, :date
  json.url act_url(act, format: :json)
end
