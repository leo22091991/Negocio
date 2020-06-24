class SaleLine < ApplicationRecord
  belongs_to :product
  belongs_to :sale_lineable, :polymorphic => true

  before_validation :set_subtotal
  validate :validation_stock


  def validation_stock
  	product_added = []
  	prod_id = self.product_id.to_i
  	@p = Product.find_by_id(prod_id)
  	stock = @p.total_stock
  	if stock >= self.quantity
  		product_added << @p
  	else
  		errors.add(:sale_lines, 'este producto no tiene stock')
  	end	
  end

  def set_subtotal
  	self.subtotal = self.quantity * product.sale_price
  end
end
