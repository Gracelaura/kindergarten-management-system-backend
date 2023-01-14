class ApplicationController < ActionController::API
    before_action :authorize
    def encode_token(payload)
      # should store secret in env variable
      JWT.encode(payload, 'my_s3cr3t')
    end
  
    def auth_header
      # { Authorization: 'Bearer <token>' }
      request.headers['Authorization']
    end
  
    def decoded_token
      if auth_header
        token = auth_header.split(' ')[1]
        # header: { 'Authorization': 'Bearer <token>' }
        begin
          JWT.decode(token, 'my_s3cr3t', true, algorithm: 'HS256')
        rescue JWT::DecodeError
          nil
        end
      end
    end
  
    def current_user
      if decoded_token
        teacher_id = decoded_token[0]['teacher_id']
        @teacher = Teacher.find_by(id: teacher_id)
      end
    end
    def current_parent
        if decoded_token
          parent_id = decoded_token[0]['parent_id']
          parent = Parent.find_by(id: parent_id)
        end
      end
  
    def logged_in?
      !!current_user || !!current_parent
    end
  
    def authorize
      render json: { message: 'Please log in' }, status: :unauthorized unless logged_in?
    end
end
