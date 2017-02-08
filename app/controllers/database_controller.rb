class DatabaseController < ApplicationController


  def index
    @list_of_movies = Movie.all
  end

  def directors
    @list_of_directors = Director.all
  end

  def show_movie
    @movie = Movie.find_by({ :id => params[:id]})
    @movie_title = @movie.title
    @movie_year = @movie.year
    @movie_duration =@movie.duration
    @movie_description = @movie.description
    @movie_image = @movie.image_url
  end

  def show_director
    @director= Director.find_by({:id =>params[:id]})
  end

  def destroy_director
    director= Director.find_by({:id =>params[:id]})
    director.destroy
    redirect_to("/directors")
  end
end
