class DisciplinesController < ApplicationController
     rescue_from ActiveRecord::RecordInvalid, with: :not_found_message
    
    def index
        render json: Discipline.all
    end

    def show
        discipline = find_by_id
        render json: [discipline]
    end

    def create
      discipline = Discipline.create!(permitted_params)
        render json: Discipline.all, status: :created
    end

    def update
       
        discipline = Discipline.find(params[:id])
        discipline.update!(update_params)
        render json: Discipline.all, status: :created
    end

    def destroy 
        discipline = find_by_id
        discipline.destroy
        head :no_content
    end

    private

    def find_by_id
        Discipline.find(params[:id])
     end

     def not_found_message
        render json: {error: "Discipline Not Found"}, status: :not_found
     end    

     def permitted_params
        params.permit(:student_id, :title, :date, :description)
     end

     def update_params
        params.permit(:title, :description)
     end
end
