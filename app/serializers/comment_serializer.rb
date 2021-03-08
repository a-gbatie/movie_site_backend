class CommentSerializer < ActiveModel::Serializer
  attributes :id, :comments
  has_one :movie
  has_one :user
end
