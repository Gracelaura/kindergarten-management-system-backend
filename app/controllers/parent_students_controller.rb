class ParentStudentsController < ApplicationController
    rescue_from ActiveRecord::RecordInvalid, with: :record_invalid

    def index
        render json: ParentStudent.all
    end

    def create
        parent_student = ParentStudent.create!(parent_student_params)
        render json: parent_student, status: :created
    end

    private
    def parent_student_params
        params.permit(:parent_id,:student_id)
    end

    def record_invalid invalid
        render json: {errors: invalid.record.errors.full_messages}, status: :unprocessable_entity
    end
end
