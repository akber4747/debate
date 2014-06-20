class WallController < ApplicationController
  def index
  	# invoke helper method
  	@user = current_user
  	    @all_topics = Topic.all

  end



  def message
  end
end
