class PagesController < ApplicationController
  def home
  	@arcades = Arcade.all
  end

  def about
  end

  def contact
  end
end
