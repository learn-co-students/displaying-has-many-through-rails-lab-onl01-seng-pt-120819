class AppointmentsController < ApplicationController

  def show
    @appointment = Appointment.find(params[:id])
   
  end

  

  
end




#DateTime.strptime(@appointment.appointment_datetime, '%B %d, %Y at %k:%M')