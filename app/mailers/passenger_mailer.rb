class PassengerMailer < ApplicationMailer

	def thank_you_email(passenger)
		@passenger = passenger
		@url = "http://flight-booker.com"
		mail(to: @passenger.email, subject: "Thank you for booking with Flight-Booker!")		
	end

end
