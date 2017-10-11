class CommentsController < ApplicationController
    def new
        @comment = Comment.new(post_id: params[:post_id])
    end

    def create
      @post = Post.find(params[:post_id])
      @comment = @post.comments.create(comment_params)
      @comment.user_id = current_user.id #or whatever is you session name
      if @comment.save
        redirect_to @post
      else
        flash.now[:danger] = "error"
      end
    end

  private
    def comment_params
      params.require(:comment).permit(:message, :post_id)
    end
end
