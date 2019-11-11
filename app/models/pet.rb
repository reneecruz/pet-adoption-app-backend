class Pet < ApplicationRecord
    has_one :adoption
    has_one :user, through: :adoption
    
    
    
end
