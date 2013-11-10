json.array!(@amoebas) do |amoeba|
  json.extract! amoeba, :name, :talent_id, :generation
  json.url amoeba_url(amoeba, format: :json)
end
