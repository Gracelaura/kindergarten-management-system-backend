class ClassroomsController < ApplicationController
    skip_before_action :authorize, only: [:index]
    def index
        render json: Classroom.all
    end
    
    def show
        classroom = Classroom.find(params[:id])
        render json: classroom, serializer: ShowMethodClassroomSerializer
    end
      
end
