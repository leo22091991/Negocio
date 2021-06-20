class Position < ApplicationRecord
	has_many :users
	belongs_to :user_permission
end
