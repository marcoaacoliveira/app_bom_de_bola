json.array!(@matches) do |match|
  json.extract! match, :id, :team_id1_id, :team_id2_id, :date, :field_id_id
  json.url match_url(match, format: :json)
end
