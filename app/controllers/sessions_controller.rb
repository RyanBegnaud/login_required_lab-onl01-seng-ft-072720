class SessionsController < ApplicationController 
    def new 
    end 

    def create 
        if params[:name] == nil || params[:name] == ""
            redirect_to login_path 
        else 
            session[:name] = params[:name]
        end
    end


    def destroy 
        if current_user 
            session.delete :name 
        end 
    end
end