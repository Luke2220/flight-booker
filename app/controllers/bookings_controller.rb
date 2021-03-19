class BookingsController < ApplicationController

    def new
        @booking = Booking.new
        for i in 0..params[:num_passengers].to_i
                passenger = @booking.passengers.build
        end
        @booking.flight = Flight.find(params[:flight_id])
          
    end

    def create

    end

    private

    def booking_params
        params.require(:booking).permit(:flight_id,:num_passengers)
    end

end
