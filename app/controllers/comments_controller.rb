class CommentsController < ApplicationController
  def create
    @comment = Comment.new(comment_params)
    @comment.post_id = params[:post_id]
    @comment.save

    redirect_to posts_path
  end

  def destroy
    @comment = Comment.find(params[:id])
  end


  private
  def comment_params
    params.require(:comment).permit(:content)
  end
end
