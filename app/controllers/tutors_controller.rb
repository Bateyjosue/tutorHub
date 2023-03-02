class TutorsController < ApplicationController
  def index
    @tutors = Tutor.all
    render json: @tutors, each_serializer: TutorSerializer
  end
end
