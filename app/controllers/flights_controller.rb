class FlightsController < ApplicationController
  def index
    @flights = Flight.all
    @flight_dates = Flight.all.map { |flight| [flight.start, flight.id] }
    @airports = Airport.all
  end
end
