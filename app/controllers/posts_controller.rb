class PostsController  < ApplicationController
  before_filter :find_post, only: [:show, :edit, :update, :destroy]

  def index
    @posts = Post.all
  end

  def show
  end

  def new
    @post = Post.new
  end

  def edit
  end

  def create
    @post = Post.new(params[:post])
    if @post.save
      flash[:success] = "Post was created successfully"
      redirect_to @post
    else
      flash[:error] = "Something went wrong"
      render 'new'
    end
  end

  def update
    if @post.update_attributes(params[:post])
      flash[:success] = "Post was updated successfully"
      redirect_to @post
    else
      flash[:error] = "Something went wrong"
      render 'edit'
    end
  end

  def destroy
    if @post.destroy
      flash[:success] = "Post was deleted successfully"
      redirect_to posts_path
    else
      flash[:error] = "Something went wrong"
      redirect_to edit_post_path(@post)
    end    
  end

  private

    def find_post
      @post = Post.find(params[:id])
    end

end
