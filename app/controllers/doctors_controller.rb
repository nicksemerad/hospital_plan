class DoctorsController < ApplicationController
  
  before_action :set_doctor, only: [:show, :update, :edit, :destroy]
  
  def index
    @doctors = Doctor.all
  end

  def show
  end

  def new
    @doctor = Doctor.new
  end

  def edit
  end

  def create
    @doctor = Doctor.new(doctor_params)
    if @doctor.save 
      redirect_to @doctor
    else 
      render :new 
    end
  end

  def destroy
    Doctor.find(params[:id]).destroy
    redirect_to patient_appointments_path	
  end

  def update 
    if @doctor.update(doctor_params)
      redirect_to @doctor
    else
      render :edit
    end
  end

  private 
  def doctor_params
    params.require(:doctor).permit(:name)
  end 
  def set_doctor
  @doctor = Doctor.find(params[:id])
  end
end
