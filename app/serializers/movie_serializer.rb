class MovieSerializer < ActiveModel::Serializer
  attributes :id, :name, :release_date, :image, :likes
  has_many :comments
  has_many :users, through: :comments 
end
