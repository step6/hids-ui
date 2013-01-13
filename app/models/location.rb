class Location < ActiveRecord::Base
	set_table_name "location"
	set_primary_key "id"

	belongs_to :server
end
