json.array!(@phrases) do |phrase|
  json.extract! phrase, :id, :condition, :libelle, :caracteristique_id
  json.url phrase_url(phrase, format: :json)
end
