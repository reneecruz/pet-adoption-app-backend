class AdoptionSerializer < ActiveModel::Serializer
  attributes :id

  belongs_to: user 
  belongs_to: pet
end
