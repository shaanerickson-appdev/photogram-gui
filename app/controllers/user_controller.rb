class UserController < ApplicationController
  def index
    render( :template => "users/index")
  end

  def details
    @username = params.fetch("username")
    @user = User.all.where({ :username => @username }).at(0)
    @photos = Photo.all.where({ :owner_id => @user.id })
    render( :template => "users/details")
  end

  def new
    u = User.new
    u.username = params.fetch("input_username")
    u.save
    redirect_to("/users/" + u.username)
  end

  def update
    id = params.fetch("user_id")
    u = User.where({ :id => id }).at(0)
    u.username = params.fetch("input_username")
    u.save
    redirect_to("/users/" + u.username)
  end
end
