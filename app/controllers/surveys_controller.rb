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
        @survey = survey_aligning(@survey)
        if @survey.save
            flash[:notice] = "Succesfully created survey!"
            redirect_to @survey
        else
            flash.now[:alert] = "Mistakes during typing data!"
            render :new, status: :unprocessable_entity
        end
    end

    def edit
        @survey = Survey.find(params[:id])
      end
    
      def update
        @survey = Survey.find(params[:id])
        @survey = survey_aligning(@survey)
    
        if @survey.update(survey_params)
            flash[:notice] = "Succesfully updated survey!"
            redirect_to @survey
        else
            flash.now[:alert] = "Mistakes during typing data!"
            render :edit, status: :unprocessable_entity
        end
    end

    def destroy
        @survey = Survey.find(params[:id])
        @survey.destroy
        
        flash[:notice] = "Succesfully deleted survey!"
        redirect_to surveys_path, status: :see_other
    end
    
    private
    def survey_params
        params.require(:survey).permit(:age, :growth, :gender, :fav_color)
    end

    def survey_aligning a_survey
        return Survey.new({age: a_survey.age, growth: a_survey.growth, gender: a_survey.gender.upcase, fav_color: a_survey.fav_color.downcase})
    end
end