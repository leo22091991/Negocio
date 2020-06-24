class Discount < ApplicationRecord
	has_many :salary_discounts
	has_many :salaries, through: :salary_discounts
end
