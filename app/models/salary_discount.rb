class SalaryDiscount < ApplicationRecord
	belongs_to :discount
	belongs_to :salary
end
