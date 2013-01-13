class Agent < ActiveRecord::Base
	self.table_name = "agent"
	self.primary_key = "id"

	belongs_to :server
end
