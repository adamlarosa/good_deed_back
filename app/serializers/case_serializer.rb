class CaseSerializer < ActiveModel::Serializer
  attributes :id, :fullname, :location, :description
end
