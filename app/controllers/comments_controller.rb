class CommentsController < ApplicationController
  
  http_basic_authenticate_with name: "smw", password: "flyeaglesfly", only: :destroy

  def create
    @article = Article.find(params[:article_id])
    @comment = @article.comments.create(comment_params)
    redirect_to article_path(@article)
  end

  def destroy
    @article = Article.find(params[:article_id])
    @comment = @article.comments.find(params[:id])
    @comment.destroy
    redirect_to article_path(@article)
  end
# The destroy action will find the article we are looking at, locate the comment within the @article.comments collection,
# and then remove it from the database and send us back to the show action for the article.
# just remember def destroy is an action.
 
  private
    def comment_params
      params.require(:comment).permit(:commenter, :body)
    end
end

