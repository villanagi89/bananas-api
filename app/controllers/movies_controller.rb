class MoviesController < ApplicationController
  before_action :set_movie, only: [:show, :update, :destroy]

  # GET /movies
  # GET /movies.json
  def index
    @movies = Movie.all

    render json: @movies, status: 200
  end

  # GET /movies/1
  # GET /movies/1.json
  def show
    @movie = Movie.find(params[:id])
    render json: @movie, status: 200
  end

  # POST /movies
  # POST /movies.json
  def create
    @movie = Movie.new(movie_params)

    if @movie.save
      render json: @movie, status: :created, location: @movie
    else
      render json: @movie.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /movies/1
  # PATCH/PUT /movies/1.json
  def update
    @movie = Movie.find(params[:id])

    if @movie.update(movie_params)
      render json: @movie, status: :ok
    else
      render json: @movie.errors, status: :unprocessable_entity
    end
  end

  # DELETE /movies/1
  # DELETE /movies/1.json
  def destroy
    @movie = Movie.find(params[:id])
    @movie.destroy
  # display all movies
    @movies = Movie.all
    render json: @movies, status: 202
  end

  private
    def movie_params
      params.require(:movie).permit(:title, :gross, :release_date, :mpaa_rating, :description)
    end
end
