json.array!(@matches) do |match|
  json.extract! match, :id, :when, :team_id, :challenger_id, :where_id
  json.url match_url(match, format: :json)
end
