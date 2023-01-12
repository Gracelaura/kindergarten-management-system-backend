class AuthController < ApplicationController
    skip_before_action :authorize, only:[:create]
    
        
    def create
        teacher = Teacher.find_by(email: params[:email])
        if teacher&.authenticate(params[:password])
            token = encode_token(teacher_id: teacher.id)
            render json: { teacher: TeacherLoginSerializer.new(teacher), jwt: token }, status: :accepted
        else
            render json: { errors: "Invalid email or password" }, status: :unauthorized
        end
    end
end
