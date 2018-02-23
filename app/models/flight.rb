class Flight < ApplicationRecord
  belongs_to :starting_airport,  foreign_key: "starting_airport_id",	class_name: "Airport"
  belongs_to :finishing_airport, foreign_key: "finishing_airport_id", class_name: "Airport"

  def departure_time_formatted
  	departure_time.strftime("%m/%d/%Y %H:%M")
  end

end
