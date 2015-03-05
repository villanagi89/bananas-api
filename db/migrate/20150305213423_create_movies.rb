class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :title
      t.decimal :gross
      t.string :release_date
      t.string :mpaa_rating
      t.string :description

      t.timestamps null: false
    end
  end
end
