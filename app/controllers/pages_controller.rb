class PagesController < ApplicationController
  def home
  	@arcades = Arcade.all
  	@components = Component.all
  	@items = @arcades + @components
  	@items.shuffle!
  end

  def about
  end

  def contact
  end
end
