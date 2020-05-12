class PatientsController < ApplicationController
  def new
  end

  def edit
  end

  def index
    @patients = Patient.all
  end

  def show
    @patient = Patient.find(params[:id])
  end
end
