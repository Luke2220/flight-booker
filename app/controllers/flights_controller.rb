class FlightsController < ApplicationController
    def index
        @airport_options = Airport.all.map {|port| [port.airport_code, port.id]}
        @flight_options = Flight.all.map {|flight| [flight.start_time, flight.id]}
        @matching_flights = Flight.where('start_time = ?', params[:start_time])
    end

    def new

    end

    def create

    end

    def show

    end
    private
    def flight_params
        params.require(:flights).permit(:flight_duration,:start_time,:flight_id,:airport_id)
    end
end
