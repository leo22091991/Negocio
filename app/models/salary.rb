class Salary < ApplicationRecord
	has_many :salary_assets, dependent: :destroy
	has_many :assets, through: :salary_assets
	belongs_to :user
	
	accepts_nested_attributes_for :salary_assets

	has_many :salary_discounts, dependent: :destroy
	has_many :discounts, through: :salary_discounts

	accepts_nested_attributes_for :salary_discounts

	after_validation :set_remunerable
	after_validation :set_gross_salary
	after_validation :set_total_discount
	after_validation :set_extra_hours
	after_validation :set_antiguedad

	def set_remunerable
		remunerable = 0.0
		salary_asset = self.salary_assets
		remunerable = self.user.position.total
		salary_asset.each do |salary_asset|
			if salary_asset.asset.asset_type_id == 1
				remunerable = remunerable + salary_asset.asset.total
			end
		end
		remunerable = remunerable + self.set_antiguedad
		return remunerable
	end

	def set_gross_salary
		gross_salary = 0.0
		salary_asset = self.salary_assets
		salary_basic = self.user.position.total
		antiguedad = self.set_antiguedad
		gross_salary = salary_basic + antiguedad
		salary_asset.each do |salary_asset|
			gross_salary = gross_salary + salary_asset.asset.total
		end
		return gross_salary	
	end

	def set_gross_salary_and_extra
		gross_total = set_gross_salary + set_extra_hours
		return gross_total
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
		extra_hours_quantity = self.set_extra_hours
		net_salary = (set_gross_salary - (self.set_remunerable * self.set_total_discount) / 100)
		return net_salary
	end

	def set_extra_hours
		extra_hours_quantity = self.extra_hour
		gross = self.set_gross_salary
		extra_hours_price = (gross / 40) + (gross / 40) * 1.5
		extra_hours_total = extra_hours_price * extra_hours_quantity
		return extra_hours_total
	end

	def set_antiguedad
		cantidad_anual = (self.user.position.total * 3) / 100
		antiguedad = self.user.set_antiguedad
		pago_antiguedad = cantidad_anual * antiguedad

		return pago_antiguedad
	end

end
