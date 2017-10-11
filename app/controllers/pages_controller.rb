class PagesController < ApplicationController
  def home
  	@arcades = Arcade.all.shuffle
  end

  def about
  end

  def contact
  end
end
