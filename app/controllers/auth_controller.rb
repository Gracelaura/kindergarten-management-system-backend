class AuthController < ApplicationController
    skip_before_action :authorize, only: [:create]
    def create
        user = Teacher.find_by(email: params[:email]) 
        if user && user.authenticate(params[:password])
        token = encode_token({user_id: user.id})
        render json: [TeacherSerializer.new(user), {jwt: token}], status: :accepted
        else
            render json: {error: "Invalid password or username"}, status: :unauthorized
        end
    end
end
