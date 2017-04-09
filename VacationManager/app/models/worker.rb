class Worker < ApplicationRecord
	has_many :vacations
	belongs_to :user

end
