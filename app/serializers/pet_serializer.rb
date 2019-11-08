class PetSerializer < ActiveModel::Serializer
  attributes :id, :name, :age, :species, :location

  has_one :adoption 
  has_one :user
end
