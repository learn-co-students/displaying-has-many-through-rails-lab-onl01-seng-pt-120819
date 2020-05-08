class PatientsController < ApplicationController
    def index
    end

    def new
    end

    def create
    end

    def show
        @patient = Patient.find_by(id: params[:id])
    end
end
