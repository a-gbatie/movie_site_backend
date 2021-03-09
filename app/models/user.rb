class User < ApplicationRecord
    has_many :comments
    has_many :movies, through: :comments, :dependent => :delete_all
end
