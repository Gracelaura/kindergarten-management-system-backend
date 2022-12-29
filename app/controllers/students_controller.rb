class StudentsController < ApplicationController
rescue_from ActiveRecord::RecordNotFound, with: :not_found_message
before_action :authorize
    def index
        render json: Student.all
    end

    def create 
        student = Student.create!(permitted_params)
        render json: student, status: :created
    end

    def show
        student = find_by_id
        render json: student, serializer: SingleStudentSerializer 
    end

    def update
        student = find_by_id
        student.update!(update_params)
        render json: Student.all
    end

    def destroy
        student = find_by_id
        student.destroy
        head :no_content
    end

    private

    def permitted_params
        params.permit(:first_name, :last_name, :age, :description, :admission_number, :role, :grade_id, :teacher_id)
    end

    def update_params
        params.permit(:description)
    end

    def find_by_id
        Student.find(params[:id])
    end

    def not_found_message
        render json: {error: "Student Not Found"}, status: :not_found
    end
end
