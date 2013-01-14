class DashboardController < ApplicationController

	def show
		@widgets = [ '/widgets/top_alerts' ]
	end

end
