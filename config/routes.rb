Rails.application.routes.draw do
  get("/", { :controller => "user", :action => "index" })
  get("/users", { :controller => "user", :action => "index" })
  get("/users/:username", { :controller => "user", :action => "details" })
  get("/new_user", { :controller => "user", :action => "new" })
  get("/edit_user/:user_id", { :controller => "user", :action => "update" })

  get("/photos", { :controller => "photo", :action => "index" })
  get("/photos/:id", { :controller => "photo", :action => "details" })

  get("/delete_photo/:id", { :controller => "photo", :action => "delete" })
  get("/add_photo", { :controller => "photo", :action => "create" })
  get("/edit_photo/:id", { :controller => "photo", :action => "update" })

  get("/new_comment", { :controller => "comment", :action => "new" })
end
