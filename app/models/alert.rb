class Alert < ActiveRecord::Base
	self.table_name = "alert"
	self.primary_key = "id"

	belongs_to :server
	belongs_to :rule, :class_name => "Signature", :foreign_key => "rule_id"
	belongs_to :location
	has_one :data, :class_name => "AlertData", :foreign_key => "id"
end
