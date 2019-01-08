Rails.application.routes.draw do
  root :to => "movies#index"
  # Routes for the Bookmark resource:

  # CREATE
  get("/bookmarks/new", { :controller => "bookmarks", :action => "new_form" })
  post("/create_bookmark", { :controller => "bookmarks", :action => "create_row" })

  # READ
  get("/bookmarks", { :controller => "bookmarks", :action => "index" })
  get("/bookmarks/:id_to_display", { :controller => "bookmarks", :action => "show" })

  # UPDATE
  get("/bookmarks/:prefill_with_id/edit", { :controller => "bookmarks", :action => "edit_form" })
  post("/update_bookmark/:id_to_modify", { :controller => "bookmarks", :action => "update_row" })

  # DELETE
  get("/delete_bookmark/:id_to_remove", { :controller => "bookmarks", :action => "destroy_row" })

  #------------------------------

  # Routes for the Watch list resource:

  # CREATE
  get("/watch_lists/new", { :controller => "watch_lists", :action => "new_form" })
  post("/create_watch_list", { :controller => "watch_lists", :action => "create_row" })

  # READ
  get("/watch_lists", { :controller => "watch_lists", :action => "index" })
  get("/watch_lists/:id_to_display", { :controller => "watch_lists", :action => "show" })

  # UPDATE
  get("/watch_lists/:prefill_with_id/edit", { :controller => "watch_lists", :action => "edit_form" })
  post("/update_watch_list/:id_to_modify", { :controller => "watch_lists", :action => "update_row" })

  # DELETE
  get("/delete_watch_list/:id_to_remove", { :controller => "watch_lists", :action => "destroy_row" })

  #------------------------------

  # Routes for the User resource:

  # CREATE
  get("/users/new", { :controller => "users", :action => "new_form" })
  post("/create_user", { :controller => "users", :action => "create_row" })

  # READ
  get("/users", { :controller => "users", :action => "index" })
  get("/users/:id_to_display", { :controller => "users", :action => "show" })

  # UPDATE
  get("/users/:prefill_with_id/edit", { :controller => "users", :action => "edit_form" })
  post("/update_user/:id_to_modify", { :controller => "users", :action => "update_row" })

  # DELETE
  get("/delete_user/:id_to_remove", { :controller => "users", :action => "destroy_row" })

  #------------------------------

  # Routes for the Role resource:

  # CREATE
  get("/roles/new", { :controller => "roles", :action => "new_form" })
  post("/create_role", { :controller => "roles", :action => "create_row" })

  # READ
  get("/roles", { :controller => "roles", :action => "index" })
  get("/roles/:id_to_display", { :controller => "roles", :action => "show" })

  # UPDATE
  get("/roles/:prefill_with_id/edit", { :controller => "roles", :action => "edit_form" })
  post("/update_role/:id_to_modify", { :controller => "roles", :action => "update_row" })

  # DELETE
  get("/delete_role/:id_to_remove", { :controller => "roles", :action => "destroy_row" })

  #------------------------------

  # Routes for the Actor resource:

  # CREATE
  get("/actors/new", { :controller => "actors", :action => "new_form" })
  post("/create_actor", { :controller => "actors", :action => "create_row" })

  # READ
  get("/actors", { :controller => "actors", :action => "index" })
  get("/actors/:id_to_display", { :controller => "actors", :action => "show" })

  # UPDATE
  get("/actors/:prefill_with_id/edit", { :controller => "actors", :action => "edit_form" })
  post("/update_actor/:id_to_modify", { :controller => "actors", :action => "update_row" })

  # DELETE
  get("/delete_actor/:id_to_remove", { :controller => "actors", :action => "destroy_row" })

  #------------------------------

  # Routes for the Director resource:

  # CREATE
  get("/directors/new", { :controller => "directors", :action => "new_form" })
  post("/create_director", { :controller => "directors", :action => "create_row" })

  # READ
  get("/directors", { :controller => "directors", :action => "index" })
  get("/directors/:id_to_display", { :controller => "directors", :action => "show" })

  # UPDATE
  get("/directors/:prefill_with_id/edit", { :controller => "directors", :action => "edit_form" })
  post("/update_director/:id_to_modify", { :controller => "directors", :action => "update_row" })

  # DELETE
  get("/delete_director/:id_to_remove", { :controller => "directors", :action => "destroy_row" })

  #------------------------------

  # Routes for the Movie resource:

  # CREATE
  get("/movies/new", { :controller => "movies", :action => "new_form" })
  post("/create_movie", { :controller => "movies", :action => "create_row" })

  # READ
  get("/movies", { :controller => "movies", :action => "index" })
  get("/movies/:id_to_display", { :controller => "movies", :action => "show" })

  # UPDATE
  get("/movies/:prefill_with_id/edit", { :controller => "movies", :action => "edit_form" })
  post("/update_movie/:id_to_modify", { :controller => "movies", :action => "update_row" })

  # DELETE
  get("/delete_movie/:id_to_remove", { :controller => "movies", :action => "destroy_row" })

  #------------------------------

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
