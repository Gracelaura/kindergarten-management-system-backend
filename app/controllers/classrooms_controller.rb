class ClassroomsController < ApplicationController
    def index
        render json: Classroom.all
    end
    
    def show
        classroom = Classroom.find(params[:id])
        render json: classroom, serializer: ShowMethodClassroomSerializer
    end
      
end
