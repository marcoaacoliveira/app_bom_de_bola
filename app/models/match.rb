class Match < ActiveRecord::Base
  belongs_to :team_id1
  belongs_to :team_id2
  belongs_to :field_id
end
