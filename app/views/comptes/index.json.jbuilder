json.array!(@comptes) do |compte|
  json.extract! compte, :id, :name, :key
  json.url compte_url(compte, format: :json)
end
