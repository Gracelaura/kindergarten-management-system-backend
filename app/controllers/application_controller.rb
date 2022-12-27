class ApplicationController < ActionController::API
     before_action :authorize
     #This method encodes the token
    def encode_token(payload)
        JWT.encode(payload, 'secret')
    end
    #Allows authorization headers from frontend
    def auth_header
        request.headers['Authorization']
    end
    #Method to decode the token in order to get the user_id
    def decode_token
        if auth_header
            token = auth_header.split(' ')[1]
            begin
                JWT.decode(token, 'secret', true, algorithm: 'HS256')
            rescue JWT::DecodeError
                nil
        end
    end
end

#Method to get the user id. If the user has a role of teacher, then it finds the teacher if not, then it finds the parent.
def current_user
    decoded_token = decode_token()
    if decoded_token
        user_id = decoded_token[0]['user_id']
        params['role'] === "Teacher" ? user === Teacher.find_by(id: user_id) : user === Parent.find_by(id: user_id)
   end
end
#Method to check if the user is logged in.
def logged_in?
!!current_user
end

def authorize
    render json: {message: "Please sign in"}, status: :unauthorized unless logged_in?
end
#Method to check if the user belongs to the teacher class or not.
def is_a_teacher?
    current_user.is_a(Teacher)
end
end 
