class AttendancesController < ApplicationController
    skip_before_action :authorize, only:[:index]
    rescue_from ActiveRecord::RecordInvalid, with: :record_invalid
    def index
        render json: Attendance.all
    end

    def create
        attendance = Attendance.create!(permitted_params)
        render json: attendance, status: :created
    end
    private
    
    def permitted_params
        params.permit(:classroom_id,:student_id, :student_name, :status, :date)
    end

    def record_invalid invalid
    render json: {errors: invalid.record.errors.full_messages}, status: :unprocessable_entity
    end

end
