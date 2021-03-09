class MovieSerializer < ActiveModel::Serializer
  attributes :id, :name, :release_date, :image
  has_many :users
end
