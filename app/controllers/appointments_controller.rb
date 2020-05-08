class AppointmentsController < ApplicationController
    

    def new
    end

    def create
    end

    def show
        @appt = Appointment.find_by(id: params[:id])
    end
end
