class GradesController < ApplicationController
    def index
        render json: Grade.all
    end

    def show
        grade = Grade.find(params[:id])
        render json: grade
    end
end
