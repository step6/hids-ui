module AlertsHelper

	def time(timestamp)
		Time.at(timestamp).in_time_zone(@user.settings.timezone).to_formatted_s(:db)
	end

end
