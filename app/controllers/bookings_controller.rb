class BookingsController < ApplicationController
    def create
        @booking = Booking.new(booking_params)
        @service = Service.find(params[:service_id]) 
        @booking.service = @service
        @booking.user = current_user
        if @booking.save
            redirect_to services_path
        else
            render "services/show", params: { service_id: @service.id }
        end
    end

    private

    def booking_params
        params.require(:booking).permit(:start_date)
    end
end
