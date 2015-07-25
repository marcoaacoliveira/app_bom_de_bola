class Match < ActiveRecord::Base
  belongs_to :team, :class_name => 'User'
  belongs_to :challenger, :class_name => 'User'
  belongs_to :where
  belongs_to :field
end
