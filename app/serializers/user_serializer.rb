class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :username, :location

  has_many :adoptions
  has_many :pets
end
