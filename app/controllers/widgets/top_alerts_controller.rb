class Widgets::TopAlertsController < ApplicationController
	layout false

	def show
		@alerts = Signature.order_by_alerts_count.limit(5)
	end

end
