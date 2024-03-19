class PagesController < ApplicationController

    def home 
        redirect_to users_url if logged_in?
    end

end
