class PagesController < ApplicationController
  def home
  	@arcades = Arcade.all.suffle
  end

  def about
  end

  def contact
  end
end
