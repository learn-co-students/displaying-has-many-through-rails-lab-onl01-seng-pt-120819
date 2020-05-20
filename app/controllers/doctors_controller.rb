class DoctorsController < ApplicationController

   def index
    @doctors = Doctor.all  
   end

   def show
    @doctor = Doctor.find_by(id: params[:id])
end

   def new
    @doctor = Doctor.new 
   end

   
    def create
        @doctor = Doctor.new(doctor_params)
        if @doctor.save 
            redirect_to doctor_path(@doctor)
        else   
            render :new   
        end
    end

    def edit 
        @doctor = Doctor.find_by(id: params[:id])
    end

    def update 
        @doctor = Doctor.find_by(id: params[:id])
        @doctor.update(doctor_params)
        if @doctor.save 
            redirect_to doctor_path(@doctor)
        else  
            render :edit 
        end
    end

    def destroy 
        @doctor = Doctor.find_by(id: params[:id])
        @doctor.destroy 
        redirect_to doctors_path 
    end
    
    

    private 

    def doctor_params
        params.require(:doctor).permit(:name, :department)
    end

end
