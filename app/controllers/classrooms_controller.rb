class ClassroomsController < ApplicationController
    def index
        render json: Classroom.all
    end
    
    def show
        classroom = Classroom.find(params[:id])
        render json: classroom, serializer: ShowMethodClassroomSerializer
    end
    def update
        classroom = Classroom.find(params[:id])
        classroom.update(teacher_params)
        render json: classroom, status: :ok
    end
    private 
    def teacher_params
     params.permit(:teacher_id)
    end

    
      
end
