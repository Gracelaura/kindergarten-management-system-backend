class ParentsController < ApplicationController
    rescue_from ActiveRecord::RecordInvalid, with: :invalid_message
    rescue_from ActiveRecord::RecordNotFound, with: :not_found_message
    skip_before_action :authorize, only: [:create]
    def create 
    parent = Parent.create!(parent_params)
    token = encode_token({parent_id: parent.id})
    render json: {parent: ParentSerializer.new(parent), jwt: token}, status: :created
    end
    def index 
    parents = Parent.all
    render json: parents, status: :ok
    end
    
    def show
    parent = Parent.find(params[:id])
    render json: parent, status: :ok
    end
    
    private
    def parent_params
    params.permit(:first_name,:last_name,:phone_number,:password)
    end
    def invalid_message(invalid)
        render json: {errors: invalid.record.errors.full_messages}, status: :unprocessable_entity
    end

    def not_found_message
        render json: {error: "Parent not Found"}, status: :not_found
    end
end
