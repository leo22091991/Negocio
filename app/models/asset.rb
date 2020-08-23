class Asset < ApplicationRecord
	belongs_to :asset_type
	has_many :salary_assets
	has_many :salaries, through: :salary_assets

	def description_and_total
    	"#{description} $#{total}"
  	end
	
end
