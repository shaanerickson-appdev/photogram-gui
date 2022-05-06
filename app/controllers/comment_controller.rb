class CommentController < ApplicationController
  def new
    c = Comment.new
    id = params.fetch("photo_id")
    c.photo_id = id
    c.author_id = params.fetch("commenter_id")
    c.body = params.fetch("body")
    c.save
    redirect_to("/photos/"+id)
  end
end
