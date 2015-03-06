class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :comment, :star_rating, :review_name
end
