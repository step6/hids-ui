class AlertsController < ApplicationController
	respond_to :html

	def index
		@alerts = Alert.includes(:rule).page(params[:page]).per(5)

		respond_with(@alerts)
	end
end
