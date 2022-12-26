class TeachersController < ApplicationController
    rescue_from ActiveRecord::RecordInvalid, with: :invalid_message
    rescue_from ActiveRecord::RecordNotFound, with: :not_found_message
    def index
        teachers = Teacher.all
        render json: teachers, status: :ok
    end

    def show
        teacher = find_teacher
        render json: teacher, status: :ok
    end
    
    def create
        teacher = Teacher.create!(teacher_params)
        token = encode_token({teacher_id: teacher.id})
        render json: [teacher, {token: token}], status: :created
    end

    private
    def find_teacher
        Teacher.find_by(id: params[:id])
    end

    def teacher_params
        params.permit(:fullname, :career_name, :phone_number, :password, :role, :email, :gender)
    end

    def invalid_message(invalid)
        render json: {errors: invalid.record.errors.full_messages}, status: :unprocessable_entity
    end

    def not_found_message
        render json: {error: "Teacher not Found"}, status: :not_found
    end
end
