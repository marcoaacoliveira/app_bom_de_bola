class Team < ActiveRecord::Base
  default_scope {order('name asc')}
  belongs_to :user
end
