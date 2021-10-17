class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :jersey_id, :title, :description, :rating
end
