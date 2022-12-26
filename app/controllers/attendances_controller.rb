class AttendancesController < ApplicationController
    def index
        render json: Attendance.all
    end

    def create
        attendance = Attendance.create!(permitted_params)
        render json: attendance, status: :created
    end
    private
    
    def permitted_params
        params.permit(:teacher_id, :student_name, :status, :date)
    end

end
