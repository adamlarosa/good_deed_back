class CommentSerializer < ActiveModel::Serializer
  attributes :content
  has_one :case
end
