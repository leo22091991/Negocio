class User < ApplicationRecord
	belongs_to :position
	has_many :salaries
  has_many :carts

	after_validation :set_antiguedad
  after_create :c_cart!
  
  #after_create :assign_cart

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  def set_antiguedad
  	actual_date = Date.today.year.to_i
	first_date = self.admission_date.year.to_i
	antiguedad = actual_date - first_date
	return antiguedad
  end

  private
  def c_cart!
    #current_cart = Cart.create()
    if self.position_id == 2
      user = self.id.to_i
      current_cart = Cart.create(user_id: user)
    end
  end


end
