class DoctorsController < ApplicationController
    def show
        @doctor = Doctor.find_by_id(params[:id])
    end 

    def index 
        @doctors = Doctor.all 
    end 

    private 
    def set_doctor
        @doctor = Doctor.find_by_id(params[:id])
    end 

    def doctor_params
        params.require(:doctor).permit(:name, :department)
    end 
end