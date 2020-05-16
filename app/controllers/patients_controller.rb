class PatientsController < ApplicationController

    def show
        @patient = Patient.find_by_id(params[:id])
    end 

    def index 
        @patients = Patient.all 
    end 

    private 
    def set_patient
        @patient = Patient.find_by_id(params[:id])
    end 

    def patient_params
        params.require(:patient).permit(:name, :age)
    end 

  end