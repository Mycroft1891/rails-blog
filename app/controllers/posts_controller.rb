class PostsController < ApplicationController

  def index
    @post = Post.all
    render 'index_2'
  end

  def show
    @post = Post.find(params[:id])
    @tags = Tag.all
    @post.increment!(:views)
  end
end
