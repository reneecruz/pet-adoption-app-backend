class User < ApplicationRecord
    has_many :adoptions, dependent: :destroy
    has_many :pets, through: :adoptions
end
