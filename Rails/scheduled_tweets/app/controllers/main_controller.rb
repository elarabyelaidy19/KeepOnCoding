class MainController < ApplicationController 

    def index  
        flash[:notice] = "logged in suc"
        flash[:alert] = "failed logging"
    end 
end 