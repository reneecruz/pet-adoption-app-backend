class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :username, :location, :gender

  has_many :adoptions
  has_many :pets
end
