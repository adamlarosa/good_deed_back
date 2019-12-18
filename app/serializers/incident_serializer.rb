class IncidentSerializer < ActiveModel::Serializer
  attributes :id, :description
  has_one :case
  has_one :healthcarefacility
end
