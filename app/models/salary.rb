class Salary < ApplicationRecord
	has_many :salary_assets, dependent: :destroy
	has_many :assets, through: :salary_assets
	
	accepts_nested_attributes_for :salary_assets

	has_many :salary_discounts, dependent: :destroy
	has_many :discounts, through: :salary_discounts

	accepts_nested_attributes_for :salary_discounts

	after_validation :set_remunerable
	after_validation :set_gross_salary
	after_validation :set_total_discount

	def set_remunerable
		remunerable = 0.0
		salary_asset = self.salary_assets
		salary_asset.each do |salary_asset|
			if salary_asset.asset.asset_type_id == 1
				remunerable = remunerable + salary_asset.asset.total
			end
		end
		return remunerable
	end

	def set_gross_salary
		gross_salary = 0.0
		salary_asset = self.salary_assets
		salary_asset.each do |salary_asset|
			gross_salary = gross_salary + salary_asset.asset.total
		end
		return gross_salary	
	end

	def set_total_discount
		total_discount = 0.0
		salary_discount = self.salary_discounts
		salary_discount.each do |salary_discount|
			total_discount = total_discount + salary_discount.discount.percentage
		end
		return total_discount
	end

	def set_net_salary
		net_salary = 0.0
		net_salary = set_gross_salary - (self.set_remunerable * self.set_total_discount) / 100
		return net_salary
	end

end
