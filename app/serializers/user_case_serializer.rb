class UserCaseSerializer < ActiveModel::Serializer
  attributes :id
  has_one :user
  has_one :case
end
