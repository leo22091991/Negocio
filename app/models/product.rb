class Product < ApplicationRecord
  belongs_to :type
  belongs_to :provider
end
