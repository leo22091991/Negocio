class Sale < ApplicationRecord
	has_many :sale_lines, :as => :sale_lineable, dependent: :destroy
	has_many :products, through: :sale_lines
	after_create :set_stock

	accepts_nested_attributes_for :sale_lines


	def set_stock
		lines = self.sale_lines
		lines.each do |line|
			product = line.product_id.to_i
			qua = line.quantity.to_i
			@p = Product.find_by_id(product)
			total_stock = @p.total_stock.to_i
			@p.update(total_stock: total_stock - qua)
		end
	end



end
