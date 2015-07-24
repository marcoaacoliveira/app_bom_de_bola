class Match < ActiveRecord::Base
  belongs_to :team
  belongs_to :challenger
  belongs_to :where
end
