class RegesterationController < ApplicationController
    def new 
        @user = User.new 
    end 
end 