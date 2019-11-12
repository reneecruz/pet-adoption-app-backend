class AdoptionSerializer < ActiveModel::Serializer
  attributes :id, :user, :pet

  belongs_to :user 
  belongs_to :pet
end
