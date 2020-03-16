class Product < ApplicationRecord
  belongs_to :type
  belongs_to :provider
  has_many :sale_lines
  has_many :sales, through: :sale_lines
end
