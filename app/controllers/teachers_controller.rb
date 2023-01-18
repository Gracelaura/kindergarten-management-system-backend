class TeachersController < ApplicationController
    skip_before_action :authorize, only: [:create]
    rescue_from ActiveRecord::RecordNotFound, with: :not_found_response
    rescue_from ActiveRecord::RecordInvalid, with: :invalid_message

    def index
        teachers = Teacher.all
        render json: teachers, status: :ok
    end

    def create
        teacher = Teacher.create!(teacher_params)
        token = encode_token({teacher_id: teacher.id})
        render json: [TeacherSerializer.new(teacher), {token: token}], status: :created
    end

    def profile
        render json: [@teacher]
    end

    def show
        teacher = Teacher.find(params[:id])
        render json: teacher,include: ['classroom','classroom.students','classroom.parents','classroom.disciplines'], serializer: TeacherSerializer ,status: :ok    
    end 

    private

    def not_found_response
    render json: {error: "Teacher not found"}, status: :not_found
    end

    def teacher_params
    params.permit(:first_name, :career_name, :last_name, :email, :phone_number,:password, :gender)
    end
    
    def invalid_message(invalid)
        render json: {errors: invalid.record.errors.full_messages}, status: :unprocessable_entity
    end

end
