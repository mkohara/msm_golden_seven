Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #get("/", {:controller=>"database", :action=>"home"})

  get("/", {:controller => "database", :action=>"index"})
  get("/movies", {:controller => "database", :action=>"index"})
  get("/directors", {:controller => "database", :action=>"directors"})


  get("/directors/:id/edit_form_director", {:controller=>"database", :action=> "edit_form_director"})
  get("/directors/:id/update_row_director", {:controller => "database", :action =>"update_row_director"})

  get("/directors/:id", {:controller=> "database", :action => "show_director"})
  get("/movies/:id", {:controller=> "database", :action => "show_movie"})
#destroy
  get("/movies/delete_movie/:id", {:controller=> "database", :action => "destroy_movie"})
  get("/directors/delete_director/:id", {:controller=> "database", :action => "destroy_director"})

#update
  get("/directors/new_form_directors", {:controller=> "database", :action => "new_form_directors"})

  get("/directors/create_row_directors", {:controller=> "database", :action => "create_row_directors"})
  get("/directors/:id/edit_form_director", {:controller=>"database", :action=> "edit_form_director"})
  get("/directors/:id/update_row_director", {:controller => "database", :action =>"update_row_director"})

  # movies
  get("/movies/:id/edit_form_movie", {:controller=>"database", :action=> "edit_form_movie"})
  get("/movies/:id/update_row_movie", {:controller => "database", :action =>"update_row_movie"})

  #actors
  get("/actors", {:controller => "database", :action => "actors"})
  get("/actors/:id", {:controller => "database", :action => "show_actor"})
  get("/actors/:id/edit_form_actor", {:controller => "database", :action => "edit_form_actor"})
  get("/actors/delete_actor/:id", {:controller => "database", :action => "destroy_actor"})
  get("/actors/new_form_actors", {:controller => "database", :action => "new_form_actors"})
  get("/actors/:id/update_row_actor", {:controller => "database", :action => "update_row_actor"})





end
