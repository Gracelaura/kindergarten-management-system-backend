class ParentsController < ApplicationController
    def index
        parents = Parent.all
        render json: parents, status: :ok
    end

    def show
        parent = find_parent
        render json: parent, status: :ok
    end
    
    def create
        parent = Parent.create(parent_params)
        render json: parent, status: :created
    end

    private
    def find_parent
        Parent.find_by(id: params[:id])
    end

    def parent_params
        params.permit(:first_name, :last_name, :phone_number, :password, :role)
    end

end
