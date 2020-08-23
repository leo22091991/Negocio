class User < ApplicationRecord
	belongs_to :position
	has_many :salaries

	after_validation :set_antiguedad


	def set_antiguedad
		actual_date = Date.today.year.to_i
		first_date = self.admission_date.year.to_i
		antiguedad = actual_date - first_date
		return antiguedad
	end

end
