class SaleLine < ApplicationRecord
  belongs_to :product
  belongs_to :sale_lineable, :polymorphic => true
end
