class TutorsController < ApplicationController

  def index
    @tutors = Tutor.all
    render json: @tutors, each_serializer: TutorSerializer
  end

  def create
    @tutor = Tutor.new(tutor_params)
    if @tutor.save
      render json: {
        status: { success: true, message: 'Tutor created successfully' }
      }
    else
      render json: { errors: @tutor.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def destroy
    if @tutor.destroy
      render json: { success: true, message: 'Tutor deleted successfully' }, status: :ok
    else
      render json: @tutor.errors, status: :unprocessable_entity
    end
  end

  private

  def tutor_params
    params.require(:tutor).permit(:name, :image, :description, :price, :city, :user_id)
  end
end
