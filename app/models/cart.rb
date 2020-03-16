class Cart < ApplicationRecord
	has_many :sale_lines, :as => :sale_lineable, dependent: :destroy
	has_many :products, through: :sale_lines

	accepts_nested_attributes_for :sale_lines
end
