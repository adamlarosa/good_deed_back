class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :fullname, :about
end
