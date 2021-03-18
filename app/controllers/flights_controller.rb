class FlightsController < ApplicationController
    def index
        @airport_options = Airport.all.map {|port| [port.airport_code, port.id]}
        @flight_options = Flight.all.map {|flight| [flight.start_time, flight.id]}
        @matching_flights = Flight.where('id = ?', params[:flight_id])
    end

    def new

    end

    def create

    end

    def show

    end
    private
    def flight_params
        params.require(:flights).permit(:passengers,:flight_date,:flight_id,:out_airport_id,:in_airport_id)
    end
end
