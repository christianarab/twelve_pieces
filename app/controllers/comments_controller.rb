class CommentsController < ApplicationController
  # Find article by id, calls comments.create, redirects to article_path
  def create
    @article = Article.find(params[:article_id])
    @comment = @article.comments.create(comment_params)
    redirect_to article_path(@article)
  end
  # Find article by id, finds comment by id, calls destroy on comment, redirects to article_path
  def destroy
    @article = Article.find(params[:article_id])
    @comment = @article.comments.find(params[:id])
    @comment.destroy
    redirect_to article_path(@article)
  end

  private
  
  def comment_params
    params.require(:comment).permit(:commenter, :body, :status, :rating)
  end
end