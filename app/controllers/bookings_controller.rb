class BookingsController < ApplicationController
  def new
  	@booking = Booking.new()
  	@flight_id = params[:flight_id]
  	@number_of_passengers = params[:number_of_passengers]
  	params[:number_of_passengers].to_i.times { @booking.passengers.build }
  end

  def create
  	@booking = Booking.create!(booking_params)
  end

  private

  def booking_params
  	params.require(:booking).permit(:flight_id, :number_of_passengers, passengers_attributes: [:name, :email])
  end
end
