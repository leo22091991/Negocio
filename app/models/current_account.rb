class CurrentAccount < ApplicationRecord
  belongs_to :account_status
  has_many :account_payments, dependent: :destroy
  has_many :sales, dependent: :destroy


  after_update :set_totals!
  before_validation :set_status

  def set_totals!
  	tot = 0.0
  	sale = self.sales
    payment = self.account_payments
  	sale.each do |sale|
  		tot_sale = sale.total_sale
  		tot = tot + tot_sale
  	end
    payment.each do |payment|
      tot_pay = payment.total
      tot = tot - tot_pay
    end
  	return tot
  end

  private
  def set_status
    self.account_status_id = 1
  end

end