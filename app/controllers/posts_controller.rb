class PostsController  < ApplicationController

  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(params[:post])
    if @post.save
      # show some kind of kind of success message
      redirect_to @post
    else
      # show some kind of kind of failure message
      render 'new'
    end
  end

end
