Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #get("/", {:controller=>"database", :action=>"home"})

  get("/", {:controller => "database", :action=>"directors"})
  get("/directors", {:controller => "database", :action=>"directors"})
end
