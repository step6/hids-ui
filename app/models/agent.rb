class Agent < ActiveRecord::Base
	set_table_name "agent"
	set_primary_key "id"

	belongs_to :server
end
