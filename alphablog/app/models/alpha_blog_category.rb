class AlphaBlogCategory < ApplicationRecord
    
    # association 
    belongs_to :alpha_blog
    belongs_to :category
end
