class FlightsController < ApplicationController
  def index
  	@airports = Airport.all
  	@flight_times = Flight.select(:departure_time).distinct
  	@matching_flights = Flight.where(starting_airport: params[:departure_airport],
  																		 finishing_airport: params[:arrival_airport])
  	@num_of_passengers = params[:number_of_passengers]
  end

  def search_params
  	params.permit(:departure_airport, :arrival_airport, :number_of_passengers, :flight_date)
  end
end
