class ReviewsController < ApplicationController
  before_action :set_review, only: [:show, :update, :destroy]

  # GET /reviews
  # GET /reviews.json
  def index
    if params[:movie_id]
      @movie = Movie.find(params[:movie_id])
      @reviews = @movie.reviews
      render json: @reviews, status: :ok
    else
      @reviews = Review.all
      render json: @reviews, status: :ok
    end
  end

  # no need for a show action.

  # POST /reviews
  # POST /reviews.json
  def create
    @movie = Movie.find(params[:movie_id])
    @review = Review.new(review_params)
    @movie.reviews << @review
    if @review.save
      render json: @review, status: :created
    else
      render json: @review.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /reviews/1
  # PATCH/PUT /reviews/1.json
  def update
    @review = Review.find(params[:id])

    if @review.update(review_params)
      render json: @review, status: :ok
    else
      render json: @review.errors, status: :unprocessable_entity
    end
  end

  # DELETE /reviews/1
  # DELETE /reviews/1.json
  def destroy
    @review = Review.find(params[:id])
    @review.destroy
    head :no_content
  end

  private

    def set_review
      @review = Review.find(params[:id])
    end

    def review_params
      params.require(:review).permit(:comment, :star_rating, :reviewer_name, :movie_id)
    end
end
