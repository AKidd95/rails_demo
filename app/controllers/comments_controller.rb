class CommentsController < ApplicationController
  def create
    @comment = Comment.create(comment_params)
    if @comment.persisted?
      flash[:success] = "Made comment"
      redirect_back(fallback_location: root_path)
    else
      flash[:success] = "Your comment was not created"
      redirect_back(fallback_location: root_path)
    end
  end

  private
  def comment_params
    params.require(:comment).permit(:email, :body, :article_id)
  end
end
