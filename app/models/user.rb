class User < ApplicationRecord
    has_many :adoptions, dependent: :destroy
    has_many :pets, through: :adoptions

    has_secure_password 

    validates_presence_of :username, :name, :location
    validates_uniqueness_of :username, :case_sensitive => false 

    
end
