class Location < ActiveRecord::Base
	self.table_name = "location"
	self.primary_key = "id"

	belongs_to :server
end
