class AppointmentsController < ApplicationController
    def index 
        @appointments = Appointment.all 
    end
    
    def show 
        @appointment = Appointment.find_by(id: params[:id])
    end

    def new 
        @appointment = Appointment.new 
    end 

    def create 
        patient = Patient.find_or_create_by(name: appointment_params[:patient_name])
    @appointment = patient.appointments.build(appointment_params)
    if @appointment.save 
        redirect_to appointments_path 
    else  
        render :new 
    end
    end

    def edit 
        @appointment = Appointment.find_by(id: params[:id])
    end 

    def update 
        @appointment = Appointment.find_by(id: params[:id])
        @appointment.update(appointment_params)
        if @appointment.save 
            redirect_to @appointment
        else  
            render :edit 
        end
    end 

    def destroy 
        @appointment = Appointment.find_by(id: params[:id])
        @appointment.destroy 
        redirect_to appointments_path
    end

    private 

    def appointment_params 
        params.require(:appointment).permit(:appointment_datetime, :patient_id, :doctor_id)
    end
end
