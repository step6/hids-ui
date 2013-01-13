class Alert < ActiveRecord::Base
	set_table_name "alert"
	set_primary_key "id"

	belongs_to :server
	belongs_to :rule, :class_name => "Signature", :foreign_key => "rule_id"
	belongs_to :location
	has_one :data, :class_name => "AlertData", :foreign_key => "id"
end
