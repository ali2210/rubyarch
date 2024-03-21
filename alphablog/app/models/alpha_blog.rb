class AlphaBlog < ApplicationRecord
    
    # assocation 

    belongs_to :user


    # trio - assocation 

    has_many :alpha_blog_categories
    has_many :categories, through: :alpha_blog_categories

    # validates
    
    validates :title, presence: true, length: {minimum: 6, maximum: 100}
    validates :description, presence: true, length: {minimum: 20, maximum: 300}
    validates :user_id, presence: true 
end
