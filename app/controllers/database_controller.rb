class DatabaseController < ApplicationController


  def index
    @list_of_movies = Movie.all
  end

  def directors
    @list_of_directors = Director.all
  end
end
