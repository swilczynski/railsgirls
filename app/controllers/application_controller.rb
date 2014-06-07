class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_filter :set_voter

  def set_voter
  	@voter = User.find(3)
  end
end
