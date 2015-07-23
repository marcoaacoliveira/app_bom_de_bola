json.array!(@players) do |player|
  json.extract! player, :id, :name, :age, :red, :yellow, :team_id
  json.url player_url(player, format: :json)
end
