class WelcomeController < ApplicationController
  def index
  	@products = Product.all
  	@types = Type.all
  end

  def cart
  	@products =Product.all
  	@cart = Cart.last
  end

end
