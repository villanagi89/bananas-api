Review.delete_all
Movie.delete_all

movie1 = Movie.create!(title: "Arrival of a Train", gross: 100.00, release_date: "Apr 1 1896", mpaa_rating: "G", description: "RELEASED MORE THAN 5 YEARS AGO: first movie ever made was by the Lumiere Brothers")

movie2 = Movie.create!(title: "The Second Best Science Fiction Movie Ever Made", gross: 2000.00, release_date: "Jan 1 2010", mpaa_rating: "G", description: "RELEASED LESS THAN 5 YEARS AGO: Many years ago, eight of our astronauts were abducted and brought to another planet.")

movie1.reviews.create!(comment: "this movie is amazing!", star_rating: 4, reviewer_name: "Alexander the great")
movie2.reviews.create!(comment: "I'm not a fan of science Fiction!", star_rating: 2, reviewer_name: "Jayne Cobb")
