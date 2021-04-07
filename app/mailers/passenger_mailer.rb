class PassengerMailer < ApplicationMailer
    default from: 'fakeflights@example.com'

    def booked_email
            @name = params[:name]
            @email = params[:email]
            mail(to:@email,subject: "Your flight has been booked!")
    end
end
