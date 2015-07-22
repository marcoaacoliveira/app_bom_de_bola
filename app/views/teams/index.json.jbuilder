json.array!(@teams) do |team|
  json.extract! team, :id, :name, :user_id, :red, :yellow, :rpa, :category
  json.url team_url(team, format: :json)
end
