class AppointmentsController < ApplicationController
  def index
    @appointments = current_user.appointments.includes([:tutor]).order(id: desc)
    render json: @appointments, each_serializer: AppointmentsController
  end

  def show
    @appointment = Appointment.find(params[:id])
    render json: @appointment, each_serializer: AppointmentSerializer
  end

  def create
    @appointment = Appointment.new(appointment_params)
    if @appointment.save
      render json: {
        status: :success,
        appointment: AppointmentSerializer.new(@appointment),
        message: 'Appointment created successfully'
      }, status: :created
    else
      render json: {
        status: :error,
        error: appointment.errors.full_messages
      }, status: :unprocessable_entity
    end
  end

  def destroy
    Appointment.find(params[:user_id]).destroy
    render json: { status: ok, message: 'Deleted Successfully' }, status: :ok
  end

  private

  def appointment_params
    params.require(:appointment).permit(:location, :date, :user_id, :tuto_id)
  end
end
