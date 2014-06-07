class VotesController < ApplicationController
  def create
    @article = Article.find(params[:article_id])
  	#@vote = Article.new(vote_params)
    #@vote.save
    redirect_to @article
  end

  private
  def vote_params
    #params.require(:vote).permit(:article_id, :voter_id)
  end
end
