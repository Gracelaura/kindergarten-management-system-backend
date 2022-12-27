class AuthController < ApplicationController
    skip_before_action :authorize, only: [:create]
    def create
        user = is_a_teacher ? Teacher.find(params[:email]) :
        Parent.find(params[:first_name])
        if user && user.authenticate(params[:password])
        token = encode_token({user_id: user.id})
        render json: {[user: is_a_teacher? ? TeacherSerializer.new(user) : ParentSerializer.new(user), jwt: token ]}, status: :accepted
        else
            render json: {error: "Invalid password or username"}, status: :unauthorized
        end
    end
end
