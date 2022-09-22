class CommentsController < ApplicationController
  def index
    @comments = Comment.all
  end

  def show
    @comment = Comment.find(params[:id])
  end

  def new
    @post = Post.find(params[:post_id])
    @comment = Comment.new
  end

  def create
    @comment = Comment.new(comment_params)
    @comment.post = @post
    @comment.save
    redirect_to post_path(@post)
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    redirect_to post_path(@comment.post), status: :see_other
  end

  private

  def set_post
    @post = Post.find(params[:post_id])
  end

  def comment_params
    params.require(:comment).permit(:content)
  end
end
