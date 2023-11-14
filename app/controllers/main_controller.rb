class MainController < ApplicationController
    def index
        flash.now[:notice] = "Example of notice - in this form you will be receive information."
    end
end