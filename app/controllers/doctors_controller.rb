class DoctorsController < ApplicationController
  def new
  end

  def edit
  end

  def index
    @doctors = Doctor.all
  end

  def show
    @doctor = Doctor.find(params[:id])
  end
end
