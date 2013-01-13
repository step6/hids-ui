class AlertData < ActiveRecord::Base
	set_table_name "data"
	set_primary_key "id"

	belongs_to :server
	belongs_to :alert, :foreign_key => "id"
end
