class DatabaseController < ApplicationController


  def index
    @list_of_movies = Movie.all
  end

  def directors
    @list_of_directors = Director.all
  end

  def actors
    @list_of_actors= Actor.all
  end

  def show_movie
    @movie = Movie.find_by({:id => params[:id]})
  end

  def show_director
    @director= Director.find_by({:id =>params[:id]})
  end

  def show_actor
    @actor = Actor.find_by({:id=>params[:id]})
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

  def destroy_actor
    actor = Actor.find_by({:id=>params[:id]})
    actor.destroy
    redirect_to("/actors")
  end

  def new_form_directors
    render("directors/new_form_directors.html.erb")
  end

  def create_row_director
    n = Director.new
    n.name=params[:name]
    n.bio=params[:bio]
    n.dob=params[:dob]
    n.image_url=params[:image_url]
    n.save
    end

  def create_row_actor
    a = Actor.new
    a.name=params[:add_name]
    a.bio=params[:add_bio]
    a.dob=params[:add_dob]
    a.image_url=params[:add_image_url]
    a.save
    redirect_to("/actors")
  end

  def create_row_movie

  end

  def edit_form_director
    @director = Director.find_by({:id => params[:id]})
    n = Director.new
    n.name=params[:name]
    n.bio=params[:bio]
    n.dob=params[:dob]
    n.image_url=params[:image_url]
  end

  def edit_form_actor
    @actor = Actor.find_by({:id=>params[:id]})
    a = Actor.new
    a.name=params[:name]
    a.bio=params[:bio]
    a.dob=params[:dob]
    a.image_url=params[:image_url]
  end

  def update_row_actor
    @actor = Actor.find_by({:id=>params[:id]})
    b = Actor.new
    b.name=params[:name]
    b.bio=params[:bio]
    b.dob=params[:dob]
    b.image_url=params[:image_url]
    b.save
    redirect_to("actors/#{@actor.id}")
  end

  def new_form_actors
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

  def new_form_movies

    render("movies/new_form_movies.html.erb")
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
