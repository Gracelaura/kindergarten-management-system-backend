class ParentStudentsController < ApplicationController
    def index
        render json: ParentStudent.all
    end
end
