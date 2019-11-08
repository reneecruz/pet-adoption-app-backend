class PetSerializer < ActiveModel::Serializer
  attributes :id, :name, :age, :breed, :img, :location

  has_one :adoption 
  has_one :user
end
