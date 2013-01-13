class AlertData < ActiveRecord::Base
	self.table_name = "data"
	self.primary_key = "id"

	belongs_to :server
	belongs_to :alert, :foreign_key => "id"
end
