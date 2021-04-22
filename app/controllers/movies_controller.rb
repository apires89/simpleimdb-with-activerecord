class MoviesController < ApplicationController
  before_action :find_movie, only: [:show,:edit,:update,:destroy]
  def index
    #routes
    #controller
    #views
    #call the movies from the database
    @movies = Movie.all
  end

  def show
    #i need to pass the id in the routes to find it here
  end

  def new
    #create a blank movie
    @movie = Movie.new
    #get a form
  end

  def create
    @movie = Movie.new(movie_params)
    #create a movie with the data of the form
    #save the movie
    @movie.save
    #redirect back to index page
    redirect_to movies_path
  end

  def edit
  end

  def update
    @movie.update(movie_params)
    redirect_to @movie
  end

  def destroy
    @movie.destroy
    redirect_to movies_path
  end

  private

  def find_movie
    @movie = Movie.find(params[:id])
  end

  def movie_params
    #mandatory method to safeguard params
    params.require(:movie).permit(:title,:description,:year)
  end

end
