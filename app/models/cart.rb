class Cart < ApplicationRecord
	has_many :sale_lines, :as => :sale_lineable, dependent: :destroy
	has_many :products, through: :sale_lines
	belongs_to :user

	accepts_nested_attributes_for :sale_lines
	before_validation :total_cero
	after_validation :set_totals

	validate :check_products

	def total_cero
		self.total = 0
	end


	def set_totals
		line = self.sale_lines
		total = 0.0
		line.each do |line|
			total = total + line.subtotal
		end
		return total		
	end

	private
	def check_products
		products_added = []
		sale_lines.each do |sale_line|
			if products_added.include? sale_line.product_id
				errors.add(:sale_lines, 'este producto ya fue agregado')
			else
				products_added << sale_line.product_id
			end
		end
	end
end
