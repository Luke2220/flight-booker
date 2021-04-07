class BookingsController < ApplicationController

    def new
        @booking = Booking.new
        for i in 1..params[:num_passengers].to_i
                @booking.passengers.build
                puts i.to_s
        end
        @booking.flight = Flight.find(params[:flight_id])
          
    end

    def create

        @booking = Booking.new
     @booking.flight = Flight.find(params[:booking][:flight_id])

        params[:booking][:passenger].each do |key,val|
            @booking.passengers.build(name: key[:name], email: key[:email])
        end

        if @booking.save!   
            @booking.passengers.each do |person|
                PassengerMailer.with(name: person.name,email: person.email).booked_email.deliver_later
            end
            redirect_to booking_path(@booking.id)
        else
            render new_bookings_path
        end

    end

    def show
  
    end

    private

    def booking_params
        params.require(:booking).permit(:booking_id,:flight_id,:num_passengers, :booking => [:passengers => [:name][:email]])
    end

end
