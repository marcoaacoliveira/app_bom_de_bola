class Match < ActiveRecord::Base
  belongs_to :team_id
  belongs_to :challenger_id
  belongs_to :where_id
  belongs_to :field
end
