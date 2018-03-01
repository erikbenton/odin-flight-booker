class BookingsController < ApplicationController
  def new
  	@booking = Booking.new()
  	@flight_id = params[:flight_id]
  	@number_of_passengers = params[:number_of_passengers]
  	params[:number_of_passengers].to_i.times { @booking.passengers.build }
  end

  def create
  	@booking = Booking.new(booking_params)
  	if(@booking.save)
      @booking.passengers.each do |passenger|
        PassengerMailer.thank_you_email(passenger).deliver_later
      end
  		render 'show'
  	else
  		redirect_to root_url
  	end
  end

  def show
  	@booking = Booking.find(params[:id])
  end

  private

  def booking_params
  	params.require(:booking).permit(:flight_id, :number_of_passengers, passengers_attributes: [:name, :email])
  end
end
