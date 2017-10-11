class CommentsController < ApplicationController
  def create
    @post = Post.find(params[:post_id])
#    @comment = @post.comments.create(comment_params)
    @comment = @post.comments.new(comment_params)
#    @user = current_user
    if @comment.save!
      flash[:notice] = "Comment Posted!"
      redirect_to(@post)
    else
      flash[:notice] = "Comment failed"
      redirect_to(@post)
    end
  end

  def comment_params
    #params.require(:comment).permit(:message, :post_id)
    params.require(:comment).permit(:message)
  end
end
