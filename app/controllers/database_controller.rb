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

  def destroy_movie
    movie= Movie.find_by({:id=>params[:id]})
    movie.destroy
    redirect_to("/movies")
  end

  def new_form_directors
    @director = Director.find_by({:id => params[:id]})
    render("/directors/new_form_directors.html.erb")
  end

  def create_row_directors
    n = Director.new
    n.name=params[:name]
    n.bio=params[:bio]
    n.dob=params[:dob]
    n.image_url=params[:image_url]
    n.save

  end

  def edit_form_director
    @director = Director.find_by({:id => params[:id]})
    n = Director.new
    n.name=params[:name]
    n.bio=params[:bio]
    n.dob=params[:dob]
    n.image_url=params[:image_url]
  end

  def update_row_director
    u = Director.find_by({:id => params[:id]})
    @director = Director.find_by({:id => params[:id]})
    u.image_url = params[:image_url]
    u.name = params[:name]
    u.bio = params[:bio]
    u.dob = params[:dob]
    u.save
    redirect_to("/directors/#{@director.id}")
  end

  def edit_form_movie
    @movie = Movie.find_by({:id => params[:id]})
    m = Movie.new
    m.title=params[:title]
    m.duration=params[:duration]
    m.year=params[:year]
    m.image_url=params[:image_url]
    m.description=params[:description]
  end

  def update_row_movie
    @movie = Movie.find_by({:id => params[:id]})
    m = Movie.find_by({:id=>params[:id]})
    m.title=params[:title]
    m.duration=params[:duration]
    m.year=params[:year]
    m.image_url=params[:image_url]
    m.description=params[:description]
    m.save
    redirect_to("/movies/#{@movie.id}")
  end
end
