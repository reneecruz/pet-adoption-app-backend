class Adoption < ApplicationRecord
  belongs_to :user
  belongs_to :pet

  # validates :pet_id, uniqueness: true
end
