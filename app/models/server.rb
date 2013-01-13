class Server < ActiveRecord::Base
	self.table_name = "server"
	self.primary_key = "id"
end
