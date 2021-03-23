class FlightsController < ApplicationController
    def index
        @airport_options = Airport.all.map {|port| [port.airport_code, port.id]}
        @flight_options = Flight.all.map {|flight| [flight.flight_date, flight.id]}

    if (params[:in_airport_id] && params[:out_airport_id])
        @arrival_airport = Airport.where("id = ?",params[:in_airport_id]).take!
        @depart_airport = Airport.where("id = ?",params[:out_airport_id]).take!
        flights = Array.new
        @arrival_airport.out_flights.each do|out_f|
            @depart_airport.in_flights.each do |in_f|
                if (out_f.id == in_f.id)
                    flights << in_f
                end
            end
        end
        @flights = Flight.where('id = ?',flights.map(&:id))
    end 
    end 
       
   
    private
    def flight_params
        params.require(:flights).permit(:booking_id,:passengers,:flight_date,:flight_id,:out_airport_id,:in_airport_id)
    end
end
