class VotesController < ApplicationController
  def create
    @article = Article.find(params[:article_id])
  	
    if !@article.votes.exists?(:user_id => @voter.id)
        @article.votes.create(:user_id => @voter.id)
    end

    redirect_to @article
  end

  def destroy
	@article = Article.find(params[:article_id])

    @vote = Vote.find_by_article_id_and_user_id(params[:article_id], params[:id])
  	
    @vote.destroy

    redirect_to @article
  end

  private
end
