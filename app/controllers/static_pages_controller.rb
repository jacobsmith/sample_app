class StaticPagesController < ApplicationController
  def home
  end

  def help
  end

  def about
  end

  def tour
  	@campaign = Campaign.find(1)
  end

end
