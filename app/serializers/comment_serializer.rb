class CommentSerializer < ActiveModel::Serializer
  attributes :id, :comments, :user
  has_one :movie
  has_one :user
end
