Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #get("/", {:controller=>"database", :action=>"home"})

  get("/", {:controller => "database", :action=>"index"})
  get("/movies", {:controller => "database", :action=>"index"})
  get("/directors", {:controller => "database", :action=>"directors"})

  get("/directors/:id", {:controller=> "database", :action => "show_director"})
  get("/movies/:id", {:controller=> "database", :action => "show_movie"})

  get("/movies/delete_movie/:id", {:controller=> "database", :action => "destroy_movie"})
  get("/directors/delete_director/:id", {:controller=> "database", :action => "destroy_director"})
end
