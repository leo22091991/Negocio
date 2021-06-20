class WelcomeController < ApplicationController
	before_action :authenticate_user!
  def index
  	@q = params[:q]
  	if @q
      @products = Product.joins(:provider).where("name Like ? OR providers.business_name Like ?", "%" + @q + "%", "%" + @q + "%")

  	else
  		@products = Product.all
  	end
  	
  	@types = Type.all
  end

  def cart
  	@q = params[:q]
    if @q
      @products = Product.joins(:provider).where("name Like ? OR providers.business_name Like ?", "%" + @q + "%", "%" + @q + "%")
    else
      @products = Product.all
    end
  	@cart = Cart.last
  end

end

