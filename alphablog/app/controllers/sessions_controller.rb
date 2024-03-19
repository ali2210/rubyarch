class SessionsController < ApplicationController

    def new
    
    end

    def create

        user = User.find_by(email: params[:session][:email].downcase)
        if user && user.authenticate(params[:session][:password])
            session[:user_id] = user.id
            flash[:notice] = "User successfully login."
            redirect_to alpha_blogs_path
        else
            flash[:notice] =  "unprocessable_entity"
            redirect_to root_path
        end
    end

    def destroy
        session[:user_id] = nil
        flash[:notice] = "Logged out"
        redirect_to root_path
    end
end
