class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.string :comment
      t.integer :star_rating
      t.string :reviewer_name
      t.belongs_to :movie, index: true

      t.timestamps null: false
    end
    add_foreign_key :reviews, :movies
  end
end
