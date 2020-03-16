class CurrentAccount < ApplicationRecord
  belongs_to :cliente
  belongs_to :account_status
  has_many :account_payments
  has_many :account_line
end
