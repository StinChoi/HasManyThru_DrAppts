class Api::AppointmentsController < ApplicationController
  before_action :set_appoinment, only [:show, :destroy, :update]

  def index
    render json: Appointment.all_and_then_some
  end

  def show
    render json: @appointment
  end

  def create
    @appointment = Appointment.new(appointment_params)
    if (@appointment.save)
      render json: @appointment
    else
      render json: { error: @appointment.errors }, status: 422
    end
  end

  def update
    if (@appointment.update(appointment_params_update))
      render json: @appointment
    else
      render json: { error: @appointment.errors }, status: 422
    end
  end

  private

  def set_appointment
    @appointment = Appointment.find(params[:id])
  end

  def appointment_params
    params.require(:appointment).permit(:time, :patient_id, :physician_id)
  end

  def appointment_params_update
    params.require(:appointment).permit(:time)
  end

end
