class StaticPagesController < ApplicationController
  def home
  end

  def help
  end

  def about
  	@campaign = Campaign.find(1)
  end

  def tour
  	@campaign = Campaign.find(1)
  end

end
