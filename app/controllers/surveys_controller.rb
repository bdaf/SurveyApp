class SurveysController < ApplicationController
    def index
        @surveys = Survey.all
    end
    
    def show
        @survey = Survey.find(params[:id])
    end
    
    def new
        @survey = Survey.new
    end
    
    def create
        @survey = Survey.new(survey_params)
        @survey[:gender] = @survey.gender.upcase
        @survey[:fav_color] = @survey.fav_color.downcase
        if @survey.save
            flash[:notice] = "Succesfully created survey!"
            redirect_to @survey
        else
            flash.now[:alert] = "Mistakes during typing data!"
            render :new, status: :unprocessable_entity
        end
    end
    
    private
    def survey_params
        params.require(:survey).permit(:age, :growth, :gender, :fav_color)
    end
end