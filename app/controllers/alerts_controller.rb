class AlertsController < ApplicationController
	respond_to :html

	def index
		@alerts = Alert.includes(:rule).page(params[:page]).per(@user.settings.pagination_per)

		respond_with(@alerts)
	end
end
