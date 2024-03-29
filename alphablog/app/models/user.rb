class User < ApplicationRecord
  
    
    before_save {self.email = email.downcase} 
    has_many :alpha_blogs , dependent: :destroy
    validates :username , presence: true, uniqueness: { case_sensitive: false }, length: {minimum: 5, maximum: 15}
    validates :email , presence: true,length: {minimum: 10, maximum: 50 } 
    has_secure_password
end
