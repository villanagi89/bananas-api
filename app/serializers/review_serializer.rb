class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :comment, :star_rating, :reviewer_name
end
