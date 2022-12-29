class GradesController < ApplicationController
before_action :authorize
skip_before_action :authorize, only: [:index, :show]
    def index
        render json: Grade.all
    end

    def show
        grade = Grade.find(params[:id])
        render json: grade, serializer: ShowMethodGradeSerializer
    end
end
