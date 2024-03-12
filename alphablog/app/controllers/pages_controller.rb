class PagesController < ApplicationController

    def home 
        # home route 
    end
    
    def about 
        render html: 'Hello World'
    end

end
