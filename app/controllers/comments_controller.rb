class CommentsController < ApplicationController
  before_filter :find_post

  def show
    @comment = Comment.find(params[:id])
  end

  def new
    @comment = Comment.new
  end

  def create
    @comment = @post.comments.build(params[:comment])
    if @comment.save
      flash[:success] = "Comment was created successfully"
      redirect_to [@post, @comment]
    else
      flash[:error] = "Something went wrong"
      render 'new'
    end
  end



  private

    def find_post
      @post = Post.find(params[:post_id])
    end

end