class UserSerializer < ActiveModel::Serializer
  attributes :id, :f_name, :l_name, :username, :password
  has_many :pets
end
