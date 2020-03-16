class AccountLine < ApplicationRecord
  belongs_to :sale
  belongs_to :current_account  
end
