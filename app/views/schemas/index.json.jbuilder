json.array!(@schemas) do |schema|
  json.extract! schema, :id, :name, :site_id
  json.url schema_url(schema, format: :json)
end
