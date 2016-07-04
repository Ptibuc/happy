json.array!(@caracteristiques) do |caracteristique|
  json.extract! caracteristique, :id, :name, :schema_id
  json.url caracteristique_url(caracteristique, format: :json)
end
