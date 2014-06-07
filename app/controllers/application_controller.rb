class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_filter :set_voter
  before_filter :set_allowed_voting_groups

  def set_voter
  	@voter = User.find(3)
  	@logged_in_user = User.find(3)
  end
  def set_allowed_voting_groups
    @allowed_voting_groups = ["authors", "voters"]
  end
end
