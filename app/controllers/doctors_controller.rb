class DoctorsController < ApplicationController
  before_action :set_doctor, only: %i[show]

  def index
    @doctors = Doctor.all
  end

  def show
  end

  def new
    @doctor = Doctor.new
  end

  def create
    doctor = Doctor.create(doctor_params)
  end

  private

  def set_doctor
    @doctor = Doctor.find(params[:id])
  end

  def doctor_params
    params.require(:doctor).permit(:name, :department)
  end

end
