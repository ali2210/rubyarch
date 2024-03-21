class Category < ApplicationRecord

    # validates

    validates :category, presence: true, length: {minimum: 3, maximum: 25}
    validates :subcategory, presence: true, length: {minimum: 3, maximum: 25}
    validates_uniqueness_of :category

    # association

    has_many :alpha_blog_categories
    has_many :alpha_blogs , through: :alpha_blog_categories
    
end
