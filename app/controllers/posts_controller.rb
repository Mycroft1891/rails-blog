class PostsController < ApplicationController

  def index
    @post = Post.all
  end

  def show
    @post = Post.find(params[:id])
    @tags = Tag.all
    @post.increment!(:views)
  end
end
