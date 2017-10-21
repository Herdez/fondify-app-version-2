class VisitorsController < ApplicationController
  def index
  	@user = User.find(current_user.id)
  	render 'users/show'
  end

  def view
  	redirect_to index_url
  end
end
