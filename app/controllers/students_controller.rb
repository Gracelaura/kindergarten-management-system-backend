class StudentsController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :not_found_message
    rescue_from ActiveRecord::RecordInvalid, with: :record_invalid
    def index
        students = Student.all
        render json: students, status: :created
        end
    
        def show
        student = Student.find(params[:id])
        render json: student, status: :created
        end
    
        def create
        student = Student.create!(student_params)
        render json: [student], status: :created
        end

        def update
            student = Student.find(params[:id])
            student.update!(student_params)
            render json: Student.all
        end
    
        def destroy
            student = Student.find(params[:id])
            student.destroy
            head :no_content
        end
    
        private
        def student_params
        params.permit(:first_name,:second_name,:surname,:classroom_id,:age, :description, :admission_number)
        end
        def not_found_message
            render json: {error: "Student Not Found"}, status: :not_found
        end

        def record_invalid invalid
    render json: {errors: invalid.record.errors.full_messages}, status: :unprocessable_entity
        end
end
