class DoctorsController < ApplicationController

    def show
        @doctor = Doctor.find(params[:id])
    end

    def index
        @patients = Patient.all
    end

    def new
        @patient = Patient.new(patient_params)
    end

    def create
        @patient = Patient.new(patient_params)
        @patient.save
        redirect_to patient_path(@patient)
    end

    private

    def patient_params

    end


end