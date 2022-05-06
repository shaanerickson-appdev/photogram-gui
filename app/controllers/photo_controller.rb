class PhotoController < ApplicationController
  def index
    render( :template => "photos/index")
  end

  def details
    @photo = Photo.where({ :id => params.fetch("id") }).at(0)
    render( :template => "photos/details")
  end

  def delete
    id = params.fetch("id")
    photo = Photo.where({ :id => id }).at(0)
    photo.destroy
    redirect_to("/photos")
  end

  def create
    i = Photo.new
    i.image = params.fetch("photo_url")
    i.caption = params.fetch("caption")
    i.owner_id = params.fetch("owner_id")
    i.save
    redirect_to("/photos/" + i.id.to_s)
  end

  def update
    id = params.fetch("id")
    i = Photo.where({ :id => id }).at(0)
    i.image = params.fetch("image_url")
    i.caption = params.fetch("image_caption")
    i.save
    redirect_to("/photos/" + id)
  end
end
